#!/usr/bin/env python
# coding: utf-8

# In[ ]:


# Install libraries
# !pip install nltk
# !pip install spacy


# In[1]:


# Get spacy version
get_ipython().system('pip show spacy | grep Version')


# In[2]:


# Get NLTK version 
get_ipython().system('pip show nltk | grep Version')


# In[3]:


# Import the library
import nltk


# In[4]:


text = "Ben relocated to Paris last year to pursue his passion. His currently enrolled in a comprehensive course on Natural Language Processing"
text


# In[5]:


nltk.download('punkt')


# In[6]:


from nltk.tokenize import word_tokenize
tokens = word_tokenize(text)
print(tokens)


# In[7]:


# Stemming
from nltk.stem import PorterStemmer
stemmer = PorterStemmer()
stemmed_words = [stemmer.stem(token) for token in tokens]
print(stemmed_words)


# In[8]:


# Part-of-speech tagging
from nltk import pos_tag
text_pos_tag = pos_tag(tokens)
print(text_pos_tag)


# In[9]:


nltk.help.upenn_tagset("NNP")


# In[10]:


# Named Entity Recognition
nltk.download('maxent_ne_chunker')
nltk.download('words')
entities = nltk.ne_chunk(text_pos_tag)
print(entities)

