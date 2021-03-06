Gesture Recognition

A home electronics company which manufactures state of the art smart televisions. You want to develop a cool feature in the smart-TV that can recognise five different gestures performed by the user which will help users control the TV without using a remote.

The gestures are continuously monitored by the webcam mounted on the TV. Each gesture corresponds to a specific command that are as followed:

Gesture | Action
--------|--------
Thumbs up |  Increase the volume
Thumbs down | Decrease the volume
Left swipe | 'Jump' backwards 10 seconds
Right swipe | 'Jump' forward 10 seconds  
Stop | Pause the movie


Objectives:
1. **Generator:** The generator should be able to take a batch of videos as input without any error. Steps like cropping, resizing and normalization should be performed successfully. 

2. **Model:** Develop a model that is able to train without any errors which will be judged on the total number of parameters (as the inference(prediction) time should be less) and the accuracy achieved. As suggested by Snehansu, start training on a small amount of data and then proceed further.

3. **Write up:** This should contain the detailed procedure followed in choosing the final model. The write up should start with the reason for choosing the base model, then highlight the reasons and metrics taken into consideration to modify and experiment to arrive at the final model.


Data Location: https://www.kaggle.com/datasets/imsparsh/gesture-recognition
