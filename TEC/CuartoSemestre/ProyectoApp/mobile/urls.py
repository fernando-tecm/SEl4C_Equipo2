from django.urls import path
from . import views

urlpatterns = [
    path('log', views.login_prueba, name="login_prueba")
]