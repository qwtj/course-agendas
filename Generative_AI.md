# I. Introduction to Generative AI

## Understanding Generative AI Concepts

### Defining Generative AI

*   Definition: AI models capable of generating new, original content.
*   Distinction from discriminative AI: Focus on creating data versus classifying it.
*   Examples: Generating images, text, music, code.

### Types of Generative Models

*   Variational Autoencoders (VAEs): `Encoder-decoder architecture, latent space manipulation`.
*   Generative Adversarial Networks (GANs): `Generator vs. Discriminator, adversarial training`.
*   Autoregressive Models: `Predicting the next token, sequential generation`.
*   Flow-Based Models: `Transforming data through invertible mappings`.
*   Diffusion Models: `Adding and reversing noise, iterative refinement`.

### Applications of Generative AI

*   Image Generation: `DALL-E, Midjourney, Stable Diffusion`.
*   Text Generation: `GPT-3, LaMDA, text summarization, content creation`.
*   Music Generation: `Jukebox, Amper Music, composing original scores`.
*   Code Generation: `GitHub Copilot, AlphaCode, automated software development`.
*   Drug Discovery: `Generating novel molecular structures, predicting drug efficacy`.

## Ethical Considerations and Limitations

### Bias in Generative Models

*   Data Bias: `Models reflecting societal biases present in training data`.
*   Mitigation Techniques: `Data augmentation, bias detection, fairness metrics`.
*   Examples of Bias: `Gender stereotypes, racial bias, cultural insensitivity`.

### Misinformation and Deepfakes

*   Deepfake Technology: `Manipulating images and videos to create convincing forgeries`.
*   Combating Deepfakes: `Detection algorithms, watermarking, media literacy`.
*   Ethical Implications: `Erosion of trust, political manipulation, reputational damage`.

### Copyright and Intellectual Property

*   Ownership of Generated Content: `Legal challenges, authorship attribution`.
*   Copyright Infringement: `Similarity to existing works, fair use considerations`.
*   Licensing Models: `Creative Commons, commercial licenses, open-source options`.

*Summary: Generative AI models create new content, unlike discriminative models. Various types exist (VAEs, GANs, Autoregressive, Flow-based, Diffusion), each with specific architectures and use cases. Ethical considerations include bias, misinformation, and copyright.*

# II. Generative Adversarial Networks (GANs)

## Understanding GAN Architecture

### Generator Network

*   Function: `Creating synthetic data samples`.
*   Input: `Random noise vector`.
*   Output: `Generated data (e.g., image, text)`.
*   Architecture: `Typically uses convolutional or recurrent layers`.

### Discriminator Network

*   Function: `Distinguishing between real and generated data`.
*   Input: `Real or generated data sample`.
*   Output: `Probability of the input being real`.
*   Architecture: `Typically uses convolutional or recurrent layers`.

### Adversarial Training Process

*   Generator Training: `Trying to fool the discriminator`.
*   Discriminator Training: `Trying to correctly identify real and fake samples`.
*   Loss Functions: `Binary cross-entropy, hinge loss`.
*   Nash Equilibrium: `Ideal state where both networks are equally good`.

## Implementing GANs with TensorFlow/Keras

### Setting up the Environment

*   Installing TensorFlow/Keras: `pip install tensorflow`.
*   Importing Libraries: `import tensorflow as tf, from tensorflow import keras`.

### Building the Generator

```python
def build_generator(latent_dim):
    model = keras.Sequential([
        keras.layers.Dense(128, activation='relu', input_dim=latent_dim),
        keras.layers.BatchNormalization(),
        keras.layers.Dense(256, activation='relu'),
        keras.layers.BatchNormalization(),
        keras.layers.Dense(784, activation='sigmoid'),  # Output layer for MNIST (28x28)
        keras.layers.Reshape((28, 28))
    ])
    return model
```

### Building the Discriminator

```python
def build_discriminator():
    model = keras.Sequential([
        keras.layers.Flatten(input_shape=(28, 28)),
        keras.layers.Dense(256, activation='relu'),
        keras.layers.Dense(128, activation='relu'),
        keras.layers.Dense(1, activation='sigmoid')  # Output layer (real or fake)
    ])
    return model
```

### Training the GAN

```python
def train_gan(generator, discriminator, real_images, latent_dim, epochs=100, batch_size=128):
    # Define optimizers
    generator_optimizer = keras.optimizers.Adam(learning_rate=0.0002)
    discriminator_optimizer = keras.optimizers.Adam(learning_rate=0.0002)

    # Define loss function
    loss_fn = keras.losses.BinaryCrossentropy()

    for epoch in range(epochs):
        for batch in range(real_images.shape[0] // batch_size):
            # Train discriminator
            random_latent_vectors = tf.random.normal(shape=(batch_size, latent_dim))
            generated_images = generator(random_latent_vectors)
            combined_images = tf.concat([generated_images, real_images[batch * batch_size:(batch + 1) * batch_size]], axis=0)
            labels = tf.concat([tf.ones((batch_size, 1)), tf.zeros((batch_size, 1))], axis=0)
            with tf.GradientTape() as tape:
                predictions = discriminator(combined_images)
                discriminator_loss = loss_fn(labels, predictions)
            grads = tape.gradient(discriminator_loss, discriminator.trainable_weights)
            discriminator_optimizer.apply_gradients(zip(grads, discriminator.trainable_weights))

            # Train generator
            random_latent_vectors = tf.random.normal(shape=(batch_size, latent_dim))
            misleading_labels = tf.zeros((batch_size, 1))
            with tf.GradientTape() as tape:
                predictions = discriminator(generator(random_latent_vectors))
                generator_loss = loss_fn(misleading_labels, predictions)
            grads = tape.gradient(generator_loss, generator.trainable_weights)
            generator_optimizer.apply_gradients(zip(grads, generator.trainable_weights))

        print(f"Epoch {epoch}, Discriminator Loss: {discriminator_loss:.4f}, Generator Loss: {generator_loss:.4f}")

# Example Usage:
latent_dim = 100
generator = build_generator(latent_dim)
discriminator = build_discriminator()
(x_train, _), (_, _) = keras.datasets.mnist.load_data()
x_train = x_train.astype('float32') / 255.0
train_gan(generator, discriminator, x_train, latent_dim)
```

## Challenges in GAN Training

### Mode Collapse

*   Definition: `Generator producing limited diversity of samples`.
*   Causes: `Discriminator overpowering the generator, poor initialization`.
*   Mitigation Techniques: `Mini-batch discrimination, unrolled GANs`.

### Vanishing Gradients

*   Definition: `Gradients becoming too small, hindering learning`.
*   Causes: `Saturation of activation functions, poor network architecture`.
*   Mitigation Techniques: `Using ReLU activation, Wasserstein GAN (WGAN)`.

### Evaluation Metrics

*   Inception Score (IS): `Measuring quality and diversity of generated images`.
*   Fréchet Inception Distance (FID): `Comparing statistics of real and generated images`.
*   Kernel Inception Distance (KID): `Alternative to FID, less sensitive to noise`.

*Summary: GANs involve a generator and discriminator competing to create and distinguish real vs. fake data. Training GANs can be challenging due to mode collapse and vanishing gradients. Evaluation metrics such as IS and FID help assess the quality of generated samples.*

# III. Variational Autoencoders (VAEs)

## Understanding VAE Architecture

### Encoder Network

*   Function: `Mapping input data to a latent space distribution`.
*   Input: `Real data sample`.
*   Output: `Mean and variance of the latent distribution`.
*   Architecture: `Typically uses convolutional or recurrent layers`.

### Decoder Network

*   Function: `Reconstructing data from the latent space`.
*   Input: `Sampled latent vector`.
*   Output: `Reconstructed data sample`.
*   Architecture: `Typically uses convolutional or recurrent layers`.

### Latent Space

*   Definition: `Lower-dimensional representation of the input data`.
*   Properties: `Continuous, smooth, and disentangled`.
*   Sampling: `Drawing samples from the latent distribution (typically Gaussian)`.

## Implementing VAEs with TensorFlow/Keras

### Building the Encoder

```python
def build_encoder(latent_dim):
    encoder_inputs = keras.Input(shape=(28, 28, 1))
    x = keras.layers.Conv2D(32, 3, activation="relu", strides=2, padding="same")(encoder_inputs)
    x = keras.layers.Conv2D(64, 3, activation="relu", strides=2, padding="same")(x)
    x = keras.layers.Flatten()(x)
    x = keras.layers.Dense(16, activation="relu")(x)
    z_mean = keras.layers.Dense(latent_dim, name="z_mean")(x)
    z_log_var = keras.layers.Dense(latent_dim, name="z_log_var")(x)
    encoder = keras.Model(encoder_inputs, [z_mean, z_log_var], name="encoder")
    return encoder
```

### Building the Decoder

```python
def build_decoder(latent_dim):
    latent_inputs = keras.Input(shape=(latent_dim,))
    x = keras.layers.Dense(7 * 7 * 64, activation="relu")(latent_inputs)
    x = keras.layers.Reshape((7, 7, 64))(x)
    x = keras.layers.Conv2DTranspose(64, 3, activation="relu", strides=2, padding="same")(x)
    x = keras.layers.Conv2DTranspose(32, 3, activation="relu", strides=2, padding="same")(x)
    decoder_outputs = keras.layers.Conv2DTranspose(1, 3, activation="sigmoid", padding="same")(x)
    decoder = keras.Model(latent_inputs, decoder_outputs, name="decoder")
    return decoder
```

### Defining the Sampling Layer

```python
class Sampling(keras.layers.Layer):
    def call(self, inputs):
        z_mean, z_log_var = inputs
        batch = tf.shape(z_mean)[0]
        dim = tf.shape(z_mean)[1]
        epsilon = tf.keras.backend.random_normal(shape=(batch, dim))
        return z_mean + tf.exp(0.5 * z_log_var) * epsilon
```

### Training the VAE

```python
def train_vae(encoder, decoder, x_train, latent_dim, epochs=10, batch_size=128):
    encoder = build_encoder(latent_dim)
    decoder = build_decoder(latent_dim)
    sampling = Sampling()

    z_mean, z_log_var = encoder(encoder.input)
    z = sampling((z_mean, z_log_var))
    reconstructed = decoder(z)

    vae = keras.Model(encoder.input, reconstructed)

    kl_loss_fn = lambda z_mean, z_log_var: -0.5 * tf.reduce_sum(1 + z_log_var - tf.square(z_mean) - tf.exp(z_log_var), axis=-1)
    reconstruction_loss_fn = keras.losses.MeanSquaredError()

    optimizer = keras.optimizers.Adam()

    def train_step(images):
        with tf.GradientTape() as tape:
            z_mean, z_log_var = encoder(images)
            z = sampling((z_mean, z_log_var))
            reconstructed = decoder(z)

            reconstruction_loss = reconstruction_loss_fn(images, reconstructed)
            kl_loss = kl_loss_fn(z_mean, z_log_var)
            total_loss = reconstruction_loss + kl_loss

        gradients = tape.gradient(total_loss, vae.trainable_weights)
        optimizer.apply_gradients(zip(gradients, vae.trainable_weights))
        return total_loss, reconstruction_loss, kl_loss

    for epoch in range(epochs):
        for step in range(x_train.shape[0] // batch_size):
            images = x_train[step * batch_size:(step + 1) * batch_size]
            total_loss, reconstruction_loss, kl_loss = train_step(images)
        print(f"Epoch {epoch}, Total Loss: {total_loss:.4f}, Reconstruction Loss: {reconstruction_loss:.4f}, KL Loss: {kl_loss:.4f}")


# Example Usage:
latent_dim = 2
(x_train, _), (_, _) = keras.datasets.mnist.load_data()
x_train = x_train.astype('float32') / 255.0
x_train = np.expand_dims(x_train, -1) # Required for CNN layers.
train_vae(build_encoder(latent_dim), build_decoder(latent_dim), x_train, latent_dim)
```

## Loss Function: Reconstruction Loss and KL Divergence

### Reconstruction Loss

*   Objective: `Minimize the difference between the input and reconstructed data`.
*   Common Metrics: `Mean Squared Error (MSE), Binary Cross-Entropy`.

### Kullback-Leibler (KL) Divergence

*   Objective: `Regularize the latent distribution to be close to a prior distribution (e.g., Gaussian)`.
*   Formula: `KL(Q(z|x) || P(z))`, where Q is the approximate posterior and P is the prior.

### Combining Losses

*   Total Loss: `Reconstruction Loss + β * KL Divergence`.
*   β Parameter: `Controlling the trade-off between reconstruction quality and latent space regularization`.

*Summary: VAEs use an encoder to map data to a latent distribution and a decoder to reconstruct it. The loss function combines reconstruction loss (MSE, BCE) and KL divergence to regularize the latent space.*

# IV. Autoregressive Models

## Understanding Autoregressive Modeling

### Concept of Autoregression

*   Definition: `Predicting a value based on its previous values`.
*   Application: `Sequential data (e.g., time series, text, audio)`.

### Markov Property

*   Definition: `Future state depends only on the current state, not the past`.
*   Role in Autoregressive Models: `Simplifying predictions by considering only recent history`.

### Chain Rule of Probability

*   Application: `Decomposing the joint probability distribution into a product of conditional probabilities`.
*   Formula: `P(x1, x2, ..., xn) = P(x1) * P(x2|x1) * P(x3|x1,x2) * ... * P(xn|x1,x2,...,xn-1)`.

## Implementing Autoregressive Models for Text Generation

### Recurrent Neural Networks (RNNs)

*   Architecture: `Sequential processing with hidden state`.
*   Types: `Simple RNN, LSTM, GRU`.
*   Application to Text: `Modeling dependencies between words/characters`.

### Transformer Models

*   Architecture: `Attention mechanism, parallel processing`.
*   Advantages: `Capturing long-range dependencies, scalability`.
*   Application to Text: `State-of-the-art performance in text generation`.

### Byte Pair Encoding (BPE)

*   Purpose: `Subword tokenization to handle large vocabularies and rare words`.
*   Algorithm: `Iteratively merging frequent pairs of characters or words`.
*   Implementation: `Using libraries like tiktoken or Hugging Face Transformers`.

### Example: Character-Level RNN

```python
import numpy as np
import tensorflow as tf
from tensorflow import keras
import random
import sys

# Load the text
path = keras.utils.get_file(
    "nietzsche.txt", origin="https://s3.amazonaws.com/text-datasets/nietzsche.txt"
)
with open(path, encoding="utf-8") as f:
    text = f.read().lower()
print("Corpus length:", len(text))

# Create character mapping
chars = sorted(list(set(text)))
print("Total chars:", len(chars))
char_indices = dict((c, i) for i, c in enumerate(chars))
indices_char = dict((i, c) for i, c in enumerate(chars))

# Prepare sequences
maxlen = 40
step = 3
sentences = []
next_chars = []
for i in range(0, len(text) - maxlen, step):
    sentences.append(text[i : i + maxlen])
    next_chars.append(text[i + maxlen])
print("Number of sequences:", len(sentences))

x = np.zeros((len(sentences), maxlen, len(chars)), dtype=bool)
y = np.zeros((len(sentences), len(chars)), dtype=bool)
for i, sentence in enumerate(sentences):
    for t, char in enumerate(sentence):
        x[i, t, char_indices[char]] = 1
    y[i, char_indices[next_chars[i]]] = 1

# Build the model
model = keras.Sequential(
    [
        keras.layers.LSTM(128, input_shape=(maxlen, len(chars))),
        keras.layers.Dense(len(chars), activation="softmax"),
    ]
)

optimizer = keras.optimizers.RMSprop(learning_rate=0.01)
model.compile(loss="categorical_crossentropy", optimizer=optimizer)

def sample(preds, temperature=1.0):
    # helper function to sample an index from a probability array
    preds = np.asarray(preds).astype("float64")
    preds = np.log(preds) / temperature
    exp_preds = np.exp(preds)
    preds = exp_preds / np.sum(exp_preds)
    probas = np.random.multinomial(1, preds, 1)
    return np.argmax(probas)


def on_epoch_end(epoch, _):
    # Function invoked at end of each epoch. Prints generated text.

    print("--- Generating text after Epoch: %d" % epoch)

    start_index = random.randint(0, len(text) - maxlen - 1)
    for diversity in [0.2, 0.5, 1.0, 1.2]:
        print("--- Diversity:", diversity)

        generated = ""
        sentence = text[start_index : start_index + maxlen]
        generated += sentence
        print('--- Generating with seed: "' + sentence + '"')
        sys.stdout.write(generated)

        for i in range(400):
            x_pred = np.zeros((1, maxlen, len(chars)))
            for t, char in enumerate(sentence):
                x_pred[0, t, char_indices[char]] = 1.0

            preds = model.predict(x_pred, verbose=0)[0]
            next_index = sample(preds, diversity)
            next_char = indices_char[next_index]
            sentence = sentence[1:] + next_char
            generated += next_char
            sys.stdout.write(next_char)
            sys.stdout.flush()
        print()


callback = keras.callbacks.LambdaCallback(on_epoch_end)

model.fit(x, y, batch_size=128, epochs=60, callbacks=[callback])
```

## Temperature Sampling

### Definition

*   Scaling the logits before applying the softmax function.
*   Formula: `Scaled Logits = Logits / Temperature`.

### Impact on Generation

*   Lower Temperature: `More deterministic, predictable output`.
*   Higher Temperature: `More random, creative output`.

### Practical Usage

*   Controlling the style and coherence of the generated text.
*   Experimenting with different temperatures to find the optimal balance.

*Summary: Autoregressive models predict future values based on previous ones, using RNNs or Transformers. Temperature sampling controls the randomness of text generation.*

# V. Diffusion Models

## Understanding Diffusion Models

### Forward Diffusion Process

*   Definition: `Gradually adding Gaussian noise to the input data over time steps`.
*   Mathematical Formulation: `x_t = √(1 - β_t) * x_{t-1} + √β_t * ε_t`, where x_t is the noisy sample at time t, β_t is the noise schedule, and ε_t is Gaussian noise.
*   Noise Schedule: `Determining the amount of noise added at each time step`.
*   Variance Exploding SDE: `dx = f(x,t)dt + g(t)dw`

### Reverse Diffusion Process

*   Definition: `Iteratively removing noise to reconstruct the original data`.
*   Mathematical Formulation: `x_{t-1} = √(1 / (1 - β_t)) * (x_t - (β_t / √(1 - α_t)) * ε_θ(x_t, t))`, where ε_θ is a neural network predicting the noise.
*   Neural Network ε_θ: `Estimating the noise added at each time step`.
*   Variance Preserving SDE: `dx = f(x,t)dt + g(t)dw`

### Connection to Score Matching

*   Score Function: `Gradient of the log probability density function`.
*   Relation: `Diffusion models learn to estimate the score function of the noisy data distribution`.
*   Score Matching Objective: `Minimizing the difference between the estimated score and the true score`.

## Implementing Diffusion Models with PyTorch

### Setting up the Environment

*   Installing PyTorch: `pip install torch torchvision torchaudio`.
*   Importing Libraries: `import torch, torch.nn as nn, torch.optim as optim`.

### Defining the Noise Schedule

```python
import torch
import numpy as np

def linear_beta_schedule(timesteps, start=0.0001, end=0.02):
    return torch.linspace(start, end, timesteps)

def cosine_beta_schedule(timesteps, s=0.008):
    steps = timesteps + 1
    x = torch.linspace(0, timesteps, steps)
    alphas_cumprod = torch.cos(((x / timesteps) + s) / (1 + s) * torch.pi * 0.5) ** 2
    alphas_cumprod = alphas_cumprod / alphas_cumprod[0]
    betas = 1 - (alphas_cumprod[1:] / alphas_cumprod[:-1])
    return torch.clip(betas, 0, 0.999)

timesteps = 1000
betas = linear_beta_schedule(timesteps=timesteps)

alphas = 1. - betas
alphas_cumprod = torch.cumprod(alphas, axis=0)
alphas_cumprod_prev = torch.cat((torch.tensor([1.], dtype=torch.float32), alphas_cumprod[:-1]))
sqrt_recip_alphas = torch.sqrt(1.0 / alphas)

sqrt_alphas_cumprod = torch.sqrt(alphas_cumprod)
sqrt_one_minus_alphas_cumprod = torch.sqrt(1. - alphas_cumprod)
posterior_variance = betas * (1. - alphas_cumprod_prev) / (1. - alphas_cumprod)
```

### Defining the Noise Prediction Network (U-Net)

```python
import torch.nn.functional as F

class Block(nn.Module):
    def __init__(self, in_ch, out_ch, time_emb_dim=None, up=False):
        super().__init__()
        self.time_mlp = None
        self.up = up
        if time_emb_dim is not None:
            self.time_mlp = nn.Linear(time_emb_dim, out_ch)
        if self.up:
            self.conv1 = nn.Conv2d(in_ch, out_ch, 3, padding=1)
            self.transform = nn.ConvTranspose2d(out_ch, out_ch, 4, 2, 1)
        else:
            self.conv1 = nn.Conv2d(in_ch, out_ch, 3, padding=1)
            self.transform = nn.Conv2d(out_ch, out_ch, 4, 2, 1)
        self.conv2 = nn.Conv2d(out_ch, out_ch, 3, padding=1)
        self.bn1 = nn.BatchNorm2d(out_ch)
        self.bn2 = nn.BatchNorm2d(out_ch)
        self.relu  = nn.ReLU()

    def forward(self, x, t=None):
        h = self.bn1(self.relu(self.conv1(x)))
        if t is not None:
            h += self.time_mlp(t)[:,:,None,None]
        h = self.bn2(self.relu(self.conv2(h)))
        if self.up:
            return self.transform(h)
        else:
            return self.transform(h)

class UNet(nn.Module):
    def __init__(self, in_ch=3, time_emb_dim=32):
        super().__init__()
        self.time_mlp = nn.Sequential(
            nn.Linear(timesteps, time_emb_dim),
            nn.ReLU(),
            nn.Linear(time_emb_dim, time_emb_dim),
        )
        self.down1 = Block(in_ch, 64)
        self.down2 = Block(64, 128)
        self.down3 = Block(128, 256)
        self.down4 = Block(256, 512)
        self.bot1  = Block(512, 512)
        self.up1   = Block(512, 256, up=True)
        self.up2   = Block(256, 128, up=True)
        self.up3   = Block(128, 64,  up=True)
        self.up4   = Block(64,  3,   up=True)

    def forward(self, x, t):
        t = self.time_mlp(t)
        d1 = self.down1(x)
        d2 = self.down2(d1)
        d3 = self.down3(d2)
        d4 = self.down4(d3)
        b1 = self.bot1(d4, t)
        u1 = self.up1(b1, t)
        u2 = self.up2(u1, t)
        u3 = self.up3(u2, t)
        out = self.up4(u3, t)
        return out

model = UNet()
```

### Defining the Loss Function and Optimizer

```python
loss_fn = nn.MSELoss()
optimizer = optim.Adam(model.parameters(), lr=1e-3)
```

### Training Loop

```python
from tqdm import tqdm

epochs = 10

# Example data (replace with your own dataset)
batch_size = 64
image_size = 32
channels = 3
dataloader = torch.randn(1000, channels, image_size, image_size) # Dummy data for demonstration.
dataloader = torch.utils.data.DataLoader(dataloader, batch_size=batch_size, shuffle=True)

def training_loop(model, dataloader, optimizer, loss_fn, epochs, device="cpu"):
    model.to(device)
    model.train()

    for epoch in range(epochs):
        loop = tqdm(dataloader, desc=f"Epoch {epoch+1}/{epochs}")
        for i, batch in enumerate(loop):
            images = batch.to(device) # Assuming images are already tensors.
            b = images.shape[0]
            # Sample timesteps
            t = torch.randint(0, timesteps, (b,), device=device).long()
            # Add noise
            x_noisy = add_noise(images, t)
            # Predict noise
            noise_pred = model(x_noisy, t)
            # Calculate loss
            loss = loss_fn(noise_pred, add_noise(images, t))
            # Backpropagate
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

            loop.set_postfix(loss=loss.item())

def add_noise(x_start, t, noise=None):
    sqrt_alphas_cumprod_t = sqrt_alphas_cumprod[t].reshape(-1, 1, 1, 1)
    sqrt_one_minus_alphas_cumprod_t = sqrt_one_minus_alphas_cumprod[t].reshape(-1, 1, 1, 1)
    if noise is None:
        noise = torch.randn_like(x_start)
    x_noisy = sqrt_alphas_cumprod_t * x_start + sqrt_one_minus_alphas_cumprod_t * noise
    return x_noisy

# Example usage
training_loop(model, dataloader, optimizer, loss_fn, epochs)
```

### Sampling Process

```python
@torch.no_grad()
def sample(model, image_size, channels, device="cpu", num_samples = 1):
    model.eval()
    x = torch.randn(num_samples, channels, image_size, image_size).to(device)

    for i in tqdm(reversed(range(1, timesteps)), desc='Sampling'):
        t = (torch.ones(num_samples) * i).long().to(device)
        predicted_noise = model(x, t)
        alpha = alphas[t][0].item()
        alpha_cumprod = alphas_cumprod[t][0].item()
        beta = betas[t][0].item()
        sqrt_one_minus_alphas_cumprod = np.sqrt(1-alpha_cumprod)
        if i > 1:
            noise = torch.randn_like(x)
        else:
            noise = torch.zeros_like(x)
        x = (1 / np.sqrt(alpha)) * (x - (beta / sqrt_one_minus_alphas_cumprod) * predicted_noise) + torch.sqrt(beta) * noise

    model.train()
    x = (x.clamp(-1, 1) + 1) / 2
    x = (x * 255).type(torch.uint8)
    return x

# Sample images
sampled_images = sample(model, image_size, channels, device="cpu", num_samples = 4)
```

## Conditional Generation with Diffusion Models

### Conditioning Techniques

*   Classifier Guidance: `Using a classifier to guide the diffusion process`.
*   Classifier-Free Guidance: `Training the diffusion model with and without class labels`.
*   Text Conditioning: `Using text embeddings to guide image generation`.

### Implementing Classifier-Free Guidance

*   Training: `Randomly dropping class labels during training`.
*   Sampling: `Interpolating between the conditional and unconditional predictions`.

*Summary: Diffusion models involve adding noise and learning to reverse the process, often using a U-Net architecture. Training involves predicting added noise, and sampling reconstructs images from noise. Conditional generation guides the process with classifiers or text embeddings.*

**Glossary**

*   **Generative AI**: AI models that create new, original content.
*   **GAN**: Generative Adversarial Network, composed of a generator and discriminator.
*   **VAE**: Variational Autoencoder, maps data to a latent space for generation.
*   **Autoregressive Model**: Predicts future values based on previous ones.
*   **Diffusion Model**: Adds and reverses noise to generate data.
*   **Mode Collapse**: Generator producing limited diversity of samples in GANs.
*   **Vanishing Gradients**: Gradients becoming too small, hindering learning in GANs.
*   **Inception Score (IS)**: Measures quality and diversity of generated images.
*   **Fréchet Inception Distance (FID)**: Compares statistics of real and generated images.
*   **KL Divergence**: Regularizes the latent distribution in VAEs.
*   **Byte Pair Encoding (BPE)**: Subword tokenization for text generation.
*   **Temperature Sampling**: Scaling logits to control randomness in text generation.
*   **Score Matching**: Estimating the score function of the noisy data distribution in diffusion models.

#
