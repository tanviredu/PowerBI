#!/usr/bin/env python
# coding: utf-8

# In[1]:


import spacy

# Ensure you have this model downloaded
# !python -m spacy download en_core_web_lg

# Load the English model
nlp = spacy.load('en_core_web_lg')

# Process words with the model
word1 = nlp("king")
word2 = nlp("queen")
word3 = nlp("apple")

# Calculate the similarities
similarity1 = word1.similarity(word2)  
similarity2 = word1.similarity(word3)  

# Display the similarities
print(f"Similarity between 'king' and 'queen': {similarity1:.2f}")
print(f"Similarity between 'king' and 'apple': {similarity2:.2f}")

