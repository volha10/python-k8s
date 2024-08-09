from django.shortcuts import render
from django.views import generic

from .models import Post


def index(request):
    return render(request, "posts/index.html")


class DetailView(generic.DetailView):
    model = Post
