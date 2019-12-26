---
header:
overlay_image: /assets/images/sdd_files/kf1.png
permalink: /portfolio/SDD/
category: teaching
author_profile: true
date: 2019-12-04
toc: true
toc_label: "Contents"
---

# State dependent diversification models
## Background
The goal of this workshop is to get you familiarized with state dependent diversification models. In the literature they are called state dependent speciation and extinction, because the models link the value of the states to the rates of speciation and extinction. This idea will be clearer as we work through the workshop excercises.

Note: This workshop is slowly evolving so materials will be changing over time.

### Introduction to Bayesian Statistics and inference
For background infromation about some basic Bayesian statistics  and MCMC algorithm to obtain posterior distribution samples plese reafer to the the slides below. This slides are from a short intro workshop I taught in Botany 2018 (Rochester, MN).
1. Bayesian stats slides [here](/assets/docs/bayesianstatsintro.pdf)
2. Markov chain Monte Carlo (MCMC) slides [here](/assets/docs/introMCMC.pdf)

Really good lecture from Paul Lewis  is available in this [video](https://www.youtube.com/watch?v=4PWlnNsfz90).


### Introduction to Continuous Time Markov Chains (CTMC)
Continuous time Markov chains are our power tools when we are trying to model any discrete trait evolution in a phylogeny.  CTMCs are stochastic processes, that is a random variable that we follow throughout time that is measuring the outcome of  interest.

The slides below are from the Botany workshop in 2018
1. Continuous Time Markov Chains slides [here](/assets/docs/introCTMC.pdf)

but more background information can be found in this long lecture that I taught in the Midwest Phylogenetic comparative methods workshop in 2019
2. [CTMC lecture](https://roszenil.github.io/portfolio/ctmc/).
3. RevBayes code [mk2.Rev](/assets/docs/mk2.Rev)


### State Speciation and Extinction Models
Here you will find all the materials that we are using to discuss state speciation and extinction models (SSE). All the materials here are the joint work of Dr. Daniel Caetano and Carrie Tribble.

#### Trait data utilized for the workshop
Trait data [.csv](/assets/docs/pole_datadis.csv), and phylogenetic [.tre](/assets/docs/poleult.tre)

#### Binary state speciation and extinction model (BiSSE) using RevBayes

BiSSE is a stochastic process that is the composition of two different birth-death stochastic processes connected by a transition rate.  The key assumption of a BiSSE model is that the trait can be categorize in two states, each state with its own birth rate $$\lambda$$ and death rate $$\mu$$ representing the splitting of a lineage or the extinction of a lineage respectively. This is a big assumption because the implication is that the accumulation (or the lack of) of lineages is link to the value of the state (0 or 1) but nothing else.

Often in the literature, including the original BiSSE article, the model is represented graphically by circles and arrows connected as the figure shown below.

![](/assets/images/sse_files/bisse.png)
*BiSSE graphical representation in most published papers. Trait is assumed be be binary, parameters $$(\lambda_0, \lambda_1)$$ are speciation rates link to each of the states, and parameters $$(mu_0,\mu_1)$$ are extinction rates. The transition rates $$(q_{01},q_{10})$$ indicate how often the value of the trait changes.*


1. SSE slides [here](/assets/docs/introSSE.pdf)
2. RevBayes code  for BiSSE [bisse.Rev](/assets/docs/bisse.Rev)
3. RevBayes code for HiSSE [hisse.Rev](/assets/docs/hisse.Rev)
4. Rcode for nice diversification plots
