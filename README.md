# Underwater image enhancement
This was a project that was built as part of a project for CCAI-322 (Digital Image Processing).

# Description of the Problem
Underwater images are essential for ocean exploration, deep-sea exploration, and archaeological excavation, but can suffer from a deterioration in quality due to scattering, absorption and refraction of light. This project proposes image enhancement and restoration methods for low-contrast ones that cause noise and limited range visibility.

# Project Goal
The main objective of the project is to improve underwater images

# Methodology
Here is the method we used to enhance the underwater image
### 1-Red and Blue Correction
extract individual RGB color channels, correct them, apply white balance, and recombine them to create a true color image.
### 2-White Balance
is used to reduce the color cast caused by underwater light scattering.
### 3-Histogram equalization
used to improve underwater image contrast.
### 4-Gamma Correction
is an important tool for correcting underwater images, but should be combined with other contrast correction techniques.
### 5-Image sharpening
is used to improve visibility and details in underwater images.
### 6-fusion algorithm
combines relevant information from two or more images to create a more informative image.
# Results
Here are some of the results

![image](https://user-images.githubusercontent.com/97242283/225151592-9753bd70-a00e-4f2c-919e-01a5858b78d8.png)
![image](https://user-images.githubusercontent.com/97242283/225153015-3ad5b6b5-d5c9-4807-a817-64e83f513d71.png)
![image](https://user-images.githubusercontent.com/97242283/225151835-9e5ea13c-1084-4ef0-84ad-776242c3f39a.png)

### In the test_images file, you can find more ruseluts.

# Analysis and Discussion
The original images are very hazy, and their colors are unbalanced, leaning heavily toward green tones. After processing, it became presenting with a better color balance.
