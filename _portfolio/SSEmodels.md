---
header:
overlay_image: /assets/images/sse_files/bisse.png
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

#### Binary state speciation and extinction model (BiSSE). A brief introduction

BiSSE is a stochastic process that is the composition of two different birth-death stochastic processes connected by a transition rate.  The key assumption of a BiSSE model is that the trait can be categorize in two states, each state with its own birth rate $$\lambda$$ and death rate $$\mu$$ representing the splitting of a lineage or the extinction of a lineage respectively. This is a big assumption because the implication is that the accumulation (or the lack of) of lineages is link to the value of the state (0 or 1) but nothing else.

Often in the literature, including the original BiSSE article, the model is represented graphically by circles and arrows connected as the figure shown below.

![](/assets/images/sse_files/bisse.png)

*Figure 1. BiSSE graphical representation in most published papers. Trait is assumed be be binary, parameters $$(\lambda_0, \lambda_1)$$ are speciation rates link to each of the states, and parameters $$(\mu_0,\mu_1)$$ are extinction rates. The transition rates $$(q_{01},q_{10})$$ indicate how often the value of the trait changes.*

The reason why this model is often represented as "circles and arrows" is because it is much easier to communicate than the mathematical representation. The mathematical representation behind BiSSE model is based on stochastic differential equations (known also as Kolmogorov forward equations). The goal of the equations is to define in "instantaneous time" (like a derivative) exactly what precedes the origination of a clade that is either in state value 0 or state value 1 in a very very short time frame.


![](/assets/images/sse_files/Bisseequations.png)
*Figure 2. Stochastic differential equations that define speciation in BiSSE*

**Why is it important to know about these equations?**
Let's just dig the interpretation of the first equation in Figure 2. The first equation for example, defines what needs to happen for a clade $$N$$ to be descendent from a lineage with state 0. The possibilities are before time $$t$$ nothing happened, the lineage was 0 and there hasn't been any speciation or extinction, nor a transition from 0 to 1, that is the very first part $$(\lambda_0+\mu_0+q_01)D_{N_0}(t)$$. But it could happen that there was a transition from 1 to 1 with instantaneous probability $$q_01D_{N_1}(t)$$; or the third possibility is that there wasn't a transition of state but a speciation event $$\lambda_0$$ with one lineage going extinct $$E_0(t)$$ whereas the other lineage gave rise to the clade $$N$$ with instantaneous probability $$D_{N_0}(t)$$.

These equations are solved numerically to obtain full probabilities (not the "instantaneous" part) in any computational software building SSE models. As you can imagine with more states these equations get complex quickly (see ChromoSSE for example), so models are hard to fit.

But another key point here is that in the definition of these equations you can see the interplay between speciation and extinction. It is difficult to discuss the speciation resulting in a clade $$N$$ without talking about the extinction of a lineage. This is going to become really really important when we are estimating and interpreting diversification parameters.

#### BiSSE using RevBayes
Another way to think about SSE models that is not only the circle and arrow diagrams, or the stochastic differential equations themselves is the graphical model representation. The goal of this introductory workshop is to get you thinking about graphical representations because you can create custom and more complex models without having to build complex equations every time.

We will discuss some of the caveats as well at the end, but one very important key feature to clarify here is that the graphical model is not only a visual representation, but an alternative to writing the math from the **model and the inference (Bayesian)** simultaneously.

**Rev Language**
Just a brief reminder that we will be using Rev language and every assignation we use has a meaning in the graphical model world. For more details please refer to (Hoehna et al. 2013 )
![](/assets/images/sse_files/revlanguage.png)

**Trait data utilized for the workshop**
Polimoneaceae data from Landis, J. et al. 2018. This is a phylogenetic tree of Phlox with selfing and outcrossing data as breeding system binary trait.

Trait data [.csv](/assets/docs/pole_datadis.csv), and phylogenetic [.tre](/assets/docs/poleult.tre)





1. SSE slides [here](/assets/docs/introSSE.pdf)
2. RevBayes code  for BiSSE [bisse.Rev](/assets/docs/bisse.Rev)
3. RevBayes code for HiSSE [hisse.Rev](/assets/docs/hisse.Rev)
4. Rcode for nice diversification plots
