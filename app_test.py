"""Test app.py"""
from app import hello_world

def test_answer():
    """test hello_world func"""
    right_answer = "Hello, world 1!!!"
    assert right_answer == hello_world()
