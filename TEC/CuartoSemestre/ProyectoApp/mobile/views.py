from django.shortcuts import render,HttpResponse
from .models import Usuario
from django.contrib.auth.hashers import make_password, check_password

# Create your views here.
def login_prueba(request):
    if request.method=='POST':
        email = request.POST['email']
        username = request.POST['username']
        age = request.POST['age']
        genre = request.POST['genre']
        country = request.POST['country']
        password = request.POST['password']
        data = Usuario(email = email,username = username, age =age, genre = genre, country = country, password = password)
       

        data.save()
        return HttpResponse('Done')
    
    else:
        return render(request,'index.html')