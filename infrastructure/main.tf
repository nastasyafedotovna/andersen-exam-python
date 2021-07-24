


resource "aws_ecs_cluster" "main-ecs" {
    name = "${var.prefix}cluster"
  
}


/* data "aws_ecr_repository" "react-repo" {
    name = "ecr-repo-reactjs"
}
data "template_file" "helloworld" {
    template = file("./templates/taskdefinition.json.tpl")

    vars = {
        app_image      = data.aws_ecr_repository.react-repo.repository_url
        app_port       = var.app_port
        fargate_cpu    = var.fargate_cpu
        fargate_memory = var.fargate_memory
        aws_region     = var.region
        tag            = var.tag
  }
}

resource "aws_ecs_task_definition" "app" {
  family                   = "helloworldapp"
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.fargate_cpu
  memory                   = var.fargate_memory
  container_definitions    = data.template_file.helloworld.rendered
} */




resource "aws_ecs_service" "helloworld" {
    name = "${var.prefix}helloworld"
    cluster = aws_ecs_cluster.main-ecs.id
#    task_definition = aws_ecs_task_definition.app.arn
    desired_count = 2
    launch_type = "FARGATE"

    network_configuration {
      security_groups = [ aws_security_group.sg-loadbalancer.id ]
      subnets = aws_subnet.private.*.id
    }

    load_balancer {
      target_group_arn = aws_alb_target_group.lb_tg_ecs.id
      container_name = "helloworld"
      container_port = var.app_port
    }
    
    depends_on = [aws_alb_listener.listener_ecs]
}