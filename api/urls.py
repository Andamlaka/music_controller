from django.urls import path
from .views import RoomView


urlpatterns = [
    path('create-room',RoomView.as_view() ),
]