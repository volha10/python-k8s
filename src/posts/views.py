from django.shortcuts import render, redirect
from django.urls import reverse
from django.views import generic

from .forms import PostForm
from .models import Post


def index(request):
    if request.method == "POST":
        form = PostForm(request.POST, request.FILES)

        if form.is_valid():
            post = form.save()
            return redirect(reverse('posts:detail', args=[post.id]))
        else:
            print("Something went wrong.")

    else:
        form = PostForm()
        posts = Post.objects.all()

        return render(request, "posts/index.html", {"form": form, "posts": posts})


class DetailView(generic.DetailView):
    model = Post
