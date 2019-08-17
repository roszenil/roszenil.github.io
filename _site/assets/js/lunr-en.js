var idx = lunr(function () {
  this.field('title')
  this.field('excerpt')
  this.field('categories')
  this.field('tags')
  this.ref('id')

  
  
    
    
      this.add({
          title: " ",
          excerpt: "Evidential Statistics Background Ari Martinez spent multiple summers doing field work in the Peruvian Amazonian. In 2011, Ari observed an...",
          categories: ["teaching"],
          tags: [],
          id: 0
      })
      
    
      this.add({
          title: " ",
          excerpt: "Continuous-Time Markov Chains (CTMC) Continuous-time Markov chains (CTMC) are stochastic processes that allow us to follow the evolution of a...",
          categories: ["teaching"],
          tags: [],
          id: 1
      })
      
    
      this.add({
          title: " ",
          excerpt: "Here you’ll find examples of some of of my lessons representative of my skills and interests. These lectures span from...",
          categories: [],
          tags: [],
          id: 2
      })
      
    
  
    
    
      this.add({
          title: "NetComp: Network Comparison in Python",
          excerpt: "As I worked on my research on network data analysis, it became clear that there was a need for a...",
          categories: ["posts"],
          tags: [],
          id: 3
      })
      
    
      this.add({
          title: "Anomaly Detection in Dynamic Networks",
          excerpt: "“Data analysis” is a hugely popular thing these days, for obvious reasons. When most people think of “data,” they think...",
          categories: ["posts"],
          tags: [],
          id: 4
      })
      
    
      this.add({
          title: "Building a Personal Site with Jekyll & Minimal Mistakes",
          excerpt: "I learned a lot while building this website; I hope to share it so that it might be helpful for...",
          categories: ["posts"],
          tags: [],
          id: 5
      })
      
    
      this.add({
          title: "The Meaning of Entropy",
          excerpt: "Entropy is a word that we see a lot in various forms. It’s classical use comes from thermodynamics: e.g. “the...",
          categories: ["posts"],
          tags: [],
          id: 6
      })
      
    
      this.add({
          title: "Algorithmic Musical Genre Classification",
          excerpt: "In this project, I construct a data pipeline which intakes raw .wav files, and then uses machine learning to predict...",
          categories: ["posts"],
          tags: [],
          id: 7
      })
      
    
      this.add({
          title: "Inverse Transform Sampling in Python",
          excerpt: "When doing data work, we often need to sample random variables. This is easy to do if one wishes to...",
          categories: ["posts"],
          tags: [],
          id: 8
      })
      
    
      this.add({
          title: "Types as Propositions",
          excerpt: "Some of the most meaningful mathematical realizations that I’ve had have been unexpected connections between two topics; that is, realizing...",
          categories: ["posts"],
          tags: [],
          id: 9
      })
      
    
      this.add({
          title: "New Paper on the arXiv!",
          excerpt: "I just put a new paper up on the arXiv, and so I thought I would share it here. This...",
          categories: ["posts"],
          tags: [],
          id: 10
      })
      
    
  
});

console.log( jQuery.type(idx) );

var store = [
  
    
    
    
      
      {
        "title": " ",
        "url": "http://localhost:4000/portfolio/evidence/",
        "excerpt": "Evidential Statistics Background Ari Martinez spent multiple summers doing field work in the Peruvian Amazonian. In 2011, Ari observed an...",
        "teaser":
          
            null
          
      },
    
      
      {
        "title": " ",
        "url": "http://localhost:4000/portfolio/ctmc/",
        "excerpt": "Continuous-Time Markov Chains (CTMC) Continuous-time Markov chains (CTMC) are stochastic processes that allow us to follow the evolution of a...",
        "teaser":
          
            null
          
      },
    
      
      {
        "title": " ",
        "url": "http://localhost:4000/portfolio/index.html",
        "excerpt": "Here you’ll find examples of some of of my lessons representative of my skills and interests. These lectures span from...",
        "teaser":
          
            null
          
      },
    
  
    
    
    
      
      {
        "title": "NetComp: Network Comparison in Python",
        "url": "http://localhost:4000/posts/2017/06/06/netcomp.html",
        "excerpt": "As I worked on my research on network data analysis, it became clear that there was a need for a...",
        "teaser":
          
            null
          
      },
    
      
      {
        "title": "Anomaly Detection in Dynamic Networks",
        "url": "http://localhost:4000/posts/2017/09/09/dynamic.html",
        "excerpt": "“Data analysis” is a hugely popular thing these days, for obvious reasons. When most people think of “data,” they think...",
        "teaser":
          
            null
          
      },
    
      
      {
        "title": "Building a Personal Site with Jekyll & Minimal Mistakes",
        "url": "http://localhost:4000/posts/2017/12/20/website.html",
        "excerpt": "I learned a lot while building this website; I hope to share it so that it might be helpful for...",
        "teaser":
          
            null
          
      },
    
      
      {
        "title": "The Meaning of Entropy",
        "url": "http://localhost:4000/posts/2018/02/06/entropy.html",
        "excerpt": "Entropy is a word that we see a lot in various forms. It’s classical use comes from thermodynamics: e.g. “the...",
        "teaser":
          
            null
          
      },
    
      
      {
        "title": "Algorithmic Musical Genre Classification",
        "url": "http://localhost:4000/posts/2018/06/06/genre.html",
        "excerpt": "In this project, I construct a data pipeline which intakes raw .wav files, and then uses machine learning to predict...",
        "teaser":
          
            null
          
      },
    
      
      {
        "title": "Inverse Transform Sampling in Python",
        "url": "http://localhost:4000/posts/2018/06/24/sampling.html",
        "excerpt": "When doing data work, we often need to sample random variables. This is easy to do if one wishes to...",
        "teaser":
          
            null
          
      },
    
      
      {
        "title": "Types as Propositions",
        "url": "http://localhost:4000/posts/2018/11/30/types.html",
        "excerpt": "Some of the most meaningful mathematical realizations that I’ve had have been unexpected connections between two topics; that is, realizing...",
        "teaser":
          
            null
          
      },
    
      
      {
        "title": "New Paper on the arXiv!",
        "url": "http://localhost:4000/posts/2019/07/05/metrics-paper.html",
        "excerpt": "I just put a new paper up on the arXiv, and so I thought I would share it here. This...",
        "teaser":
          
            null
          
      }
    
  ]

$(document).ready(function() {
  $('input#search').on('keyup', function () {
    var resultdiv = $('#results');
    var query = $(this).val().toLowerCase().replace(":", "");
    var result =
      idx.query(function (q) {
        query.split(lunr.tokenizer.separator).forEach(function (term) {
          q.term(term, {  boost: 100 })
          if(query.lastIndexOf(" ") != query.length-1){
            q.term(term, {  usePipeline: false, wildcard: lunr.Query.wildcard.TRAILING, boost: 10 })
          }
          if (term != ""){
            q.term(term, {  usePipeline: false, editDistance: 1, boost: 1 })
          }
        })
      });
    resultdiv.empty();
    resultdiv.prepend('<p class="results__found">'+result.length+' Result(s) found</p>');
    for (var item in result) {
      var ref = result[item].ref;
      if(store[ref].teaser){
        var searchitem =
          '<div class="list__item">'+
            '<article class="archive__item" itemscope itemtype="http://schema.org/CreativeWork">'+
              '<h2 class="archive__item-title" itemprop="headline">'+
                '<a href="'+store[ref].url+'" rel="permalink">'+store[ref].title+'</a>'+
              '</h2>'+
              '<div class="archive__item-teaser">'+
                '<img src="'+store[ref].teaser+'" alt="">'+
              '</div>'+
              '<p class="archive__item-excerpt" itemprop="description">'+store[ref].excerpt+'</p>'+
            '</article>'+
          '</div>';
      }
      else{
    	  var searchitem =
          '<div class="list__item">'+
            '<article class="archive__item" itemscope itemtype="http://schema.org/CreativeWork">'+
              '<h2 class="archive__item-title" itemprop="headline">'+
                '<a href="'+store[ref].url+'" rel="permalink">'+store[ref].title+'</a>'+
              '</h2>'+
              '<p class="archive__item-excerpt" itemprop="description">'+store[ref].excerpt+'</p>'+
            '</article>'+
          '</div>';
      }
      resultdiv.append(searchitem);
    }
  });
});
