from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
import numpy as np
import urllib.request # python 3
import json
import os

# Create your views here.
# TODO add the detction alkforithm