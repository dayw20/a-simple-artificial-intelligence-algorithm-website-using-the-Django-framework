# LeNet AI Demo - Django Web Application

[![Python](https://img.shields.io/badge/Python-3.9+-blue.svg)](https://www.python.org/downloads/)
[![Django](https://img.shields.io/badge/Django-3.0+-green.svg)](https://www.djangoproject.com/)
[![PyTorch](https://img.shields.io/badge/PyTorch-1.0+-red.svg)](https://pytorch.org/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Project Description

This is a simple artificial intelligence algorithm demonstration website built with the Django framework, primarily implementing the classic LeNet convolutional neural network model. The project integrates deep learning model training, web interface display, and result visualization, providing a complete web application example for learning and demonstrating AI algorithms.


## Project Architecture

```
a-simple-artificial-intelligence-algorithm-website-using-the-Django-framework/
├── LeNet/                    # LeNet model related code
│   ├── model/               # Model definition
│   │   └── lenet.py        # LeNet-5 network architecture
│   └── train.py            # Model training script
├── utils/                   # Utility functions
│   ├── pre_process.py      # Data preprocessing
│   └── visualizer.py       # Visualization tools
├── templates/               # HTML templates
│   ├── Home.html           # Homepage
│   ├── TrainModel.html     # Model training page
│   └── ShowInfo.html       # Result display page
├── static/                  # Static files
├── manage.py               # Django management script
└── lenet.pth               # Pre-trained model weights
```

## Quick Start

### Requirements

- Python 3.9+
- Django 3.0+
- PyTorch 1.0+
- torchvision
- OpenCV (cv2)

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/a-simple-artificial-intelligence-algorithm-website-using-the-Django-framework.git
   cd a-simple-artificial-intelligence-algorithm-website-using-the-Django-framework
   ```

2. **Create virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/Mac
   # or
   venv\Scripts\activate     # Windows
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run Django server**
   ```bash
   python manage.py runserver
   ```

5. **Access the website**
   Open your browser and visit `http://127.0.0.1:8000/`


## Website Features

### Homepage
- Project introduction and navigation menu
- Clean Bootstrap interface design

### Model Training Page
- Display model training parameters
- Users can submit training tasks
- Real-time display of training status

### Result Display Page
- Show completed model training results
- Visualize training process
- Model performance metrics

## Tech Stack

- **Backend Framework**: Django
- **Deep Learning**: PyTorch
- **Frontend Framework**: Bootstrap
- **Data Processing**: torchvision
- **Image Processing**: OpenCV
- **Database**: SQLite

