from django.db import models


def _generate_path_to_image(instance, filename):
    print(filename)
    return filename


class Post(models.Model):
    author = models.CharField(max_length=50)
    title = models.CharField(max_length=100)
    content = models.TextField(max_length=1000)
    image = models.ImageField(upload_to=_generate_path_to_image)

