import os
from uuid import uuid4

from django.db import models


def _generate_image_name(_, filename):
    file_extension = os.path.splitext(filename)[1]

    return f"{uuid4()}{file_extension}"


class Post(models.Model):
    author = models.CharField(max_length=50)
    title = models.CharField(max_length=100)
    content = models.TextField(max_length=1000)
    image = models.ImageField(upload_to=_generate_image_name)

