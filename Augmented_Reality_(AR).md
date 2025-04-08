# I. Augmented Reality Fundamentals

## Understanding Augmented Reality Concepts

### Defining Augmented Reality (AR)
*   Distinguish AR from Virtual Reality (VR) and Mixed Reality (MR).
*   Key characteristics: real-time interaction, 3D registration, combination of real and virtual.

### AR System Components
*   Hardware: Smartphones, tablets, AR glasses (e.g., HoloLens, Magic Leap).
*   Software: AR SDKs (e.g., ARKit, ARCore), game engines (e.g., Unity, Unreal Engine).
*   Tracking technologies: Computer vision, sensors (e.g., GPS, accelerometer, gyroscope).

## Exploring AR Applications

### Use Cases in Different Industries
*   Retail: Virtual try-on, product visualization. Example: IKEA Place app.
*   Education: Interactive learning, 3D models. Example: Anatomy 4D app.
*   Healthcare: Surgical training, medical visualization. Example: AccuVein.
*   Manufacturing: Assembly guidance, remote assistance. Example: DAQRI Worksense.

### Social AR
*   AR filters on social media platforms. Example: Snapchat lenses, Instagram filters.
*   Collaborative AR experiences.

# II. AR Development Platforms and Tools

## Introduction to AR SDKs

### ARKit (iOS)
*   Understanding the ARKit coordinate system.
*   Key features: Scene understanding, people occlusion, face tracking.

### ARCore (Android)
*   Understanding the ARCore environment.
*   Key features: Motion tracking, environmental understanding, light estimation.

## Setting Up a Development Environment

### Installing Unity
*   Download and install Unity Hub.
*   Install a Unity version compatible with ARKit/ARCore.
*   Configure Unity for mobile development (Android or iOS).

### Installing AR Foundation
*   Understanding the purpose of AR Foundation.
*   Adding AR Foundation package to Unity project.
    *   `Window > Package Manager > Search for AR Foundation`

### Setting Up Mobile Device
*   Enabling developer options on Android device.
*   Installing Xcode on macOS for iOS development.

# III. Building Basic AR Applications with Unity and AR Foundation

## Scene Setup and AR Camera Configuration

### Creating a New Unity Project
*   Choose a 3D template project.

### Adding AR Components to the Scene
*   Add `AR Session` and `AR Session Origin` components.
*   Configure the `AR Camera`.

## Plane Detection and Object Placement

### Implementing Plane Detection
*   Using `AR Plane Manager` to detect horizontal and vertical planes.
*   Visualizing detected planes.

### Placing Objects on Detected Planes
*   Attaching a script to instantiate objects on tap.
    ```csharp
    using UnityEngine;
    using UnityEngine.XR.ARFoundation;
    using UnityEngine.XR.ARSubsystems;

    public class PlaceObjectOnPlane : MonoBehaviour
    {
        public GameObject objectToPlace;
        public ARRaycastManager raycastManager;
        public Camera arCamera;

        void Update()
        {
            if (Input.touchCount > 0)
            {
                Touch touch = Input.GetTouch(0);
                if (touch.phase == TouchPhase.Began)
                {
                    Ray ray = arCamera.ScreenPointToRay(touch.position);
                    List<ARRaycastHit> hits = new List<ARRaycastHit>();
                    if (raycastManager.Raycast(ray, hits, TrackableType.PlaneWithinPolygon))
                    {
                        Pose hitPose = hits[0].pose;
                        Instantiate(objectToPlace, hitPose.position, hitPose.rotation);
                    }
                }
            }
        }
    }
    ```

## Image Tracking

### Setting Up Image Tracking in Unity
*   Creating a reference image library in the AR Foundation settings.
*   Adding `AR Tracked Image Manager` to the scene.

### Responding to Image Tracking Events
*   Implementing a script to react when a tracked image is detected or lost.

# IV. Advanced AR Techniques

## Understanding Anchors

### Creating and Using Anchors
*   Understanding the purpose of anchors for stable tracking.
*   Using `AR Anchor Manager` to create anchors.

### Attaching Objects to Anchors

*   Ensuring objects stay fixed in the real world.

## Light Estimation

### Understanding AR Lighting
*   Using `AR Light Estimation Manager` to get lighting information from the environment.

### Applying Environmental Lighting to Virtual Objects
*   Adjusting the color and intensity of virtual object's lighting.

## Face Tracking

### Implementing Face Tracking with ARKit/ARCore
*   Using `AR Face Manager` to track faces.

### Overlaying 3D Models on Faces
*   Creating face filters and masks.

## World Tracking and Mapping

### Introduction to Simultaneous Localization and Mapping (SLAM)
*   Understanding how SLAM works in AR.

### Using World Tracking for Complex AR Experiences
*   Building applications that require detailed understanding of the environment.

# V. Optimizing AR Applications

## Performance Considerations

### Profiling AR Applications
*   Using Unity's profiler to identify performance bottlenecks.

### Optimizing 3D Models and Textures
*   Reducing polygon count, using texture atlases.

### Efficient Memory Management
*   Avoiding memory leaks, using object pooling.

## User Experience (UX) Design for AR

### Principles of Good AR UX
*   Providing clear instructions, intuitive interaction.

### Avoiding Motion Sickness
*   Minimizing sudden movements, providing visual cues.

### Testing and Iteration
*   Gathering user feedback, iterating on the design.
