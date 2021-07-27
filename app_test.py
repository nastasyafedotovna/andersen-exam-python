"""Test app.py"""
from app import hello_world

def test_answer():
    """test hello_world func"""
    right_answer = "Hell0, world! 12!!!!!!!!!!!!!!!!!!!!!!!"
    assert right_answer == hello_world()
