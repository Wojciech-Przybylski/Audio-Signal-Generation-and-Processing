Audio Signal Generation and Processing
This MATLAB script generates and processes audio signals using a combination of synthetic and pre-recorded signals. The script is divided into four sections, each with a different set of signal processing steps:

Reading in a WAV file and plotting the waveform: The script reads in an audio signal from a WAV file named "task2sig.wav" and plots the waveform using the "plot" function.

Generating a synthetic audio signal and plotting its power spectrum: The script sets some variables for generating a synthetic audio signal, such as the sample rate, duration, and frequency components. It then generates the signal and plots its power spectrum using the FFT function and the "plot" function.

Generating a synthetic signal with an ADSR envelope and playing it back: The script defines five piano frequencies and generates a synthetic signal consisting of the sum of five sine waves with these frequencies. It then applies an ADSR envelope (Attack, Decay, Sustain, Release) to the signal to control its amplitude over time. The resulting signal is plotted twice and played back using the "sound" function.

Extracting the envelope of a pre-recorded signal and applying it to a synthetic signal: The script applies a Hilbert filter to the original audio signal read in at the beginning of the script to extract its envelope. It then multiplies this envelope by a synthetic signal generated in section 3 to create a new signal with the same envelope as the original audio signal but with different frequency components. This signal is plotted and played back using the same methods as before.

Usage
To use this script, follow these steps:

Ensure that you have MATLAB installed on your computer.
Download the script and the "task2sig.wav" file to a folder on your computer.
Open MATLAB and navigate to the folder where you saved the script and the audio file.
Run the script in MATLAB.
When you run the script, it will generate and process audio signals according to the steps outlined above. You can modify the script to change the parameters of the synthetic signals or to read in a different audio file.

Dependencies
This script requires MATLAB to run. It also requires the "task2sig.wav" file to be present in the same folder as the script.

License
This script is released under the MIT License. You are free to use, modify, and distribute this script for any purpose, as long as you include a copy of the license with any copies or derivatives.
