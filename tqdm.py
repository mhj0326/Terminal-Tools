from tqdm import tqdm
import time  # Example to simulate a time-consuming task

# Example with a basic loop
for i in tqdm(range(100), desc="Processing"):
    time.sleep(0.1)  # Simulate some work being done
