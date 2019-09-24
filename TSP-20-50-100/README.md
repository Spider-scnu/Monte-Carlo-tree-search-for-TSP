# MCTS-TSP
This is the source code for solving the Traveling Salesman Problems (TSP) using **Monte Carlo tree search (MCTS)**.

### Paper
If you want to get more details, please see our paper [XXXXX](https://github.com/wouterkool/attention-learn-to-route). 

### Dependencies

* gcc >= 4.8.5
* jupyter notebook

### Quick start

For solving TSP instances with 20 nodes using **MCTS**:

```bash
bash solve-20.sh 32
```

### Usage

#####Dataset

Our model are tested on two datasets respectively, Concorde and  TSPLib which could be downloaded from:

* [Concorde](https://drive.google.com/file/d/1-5W-S5e7CKsJ9uY9uVXIyxgbcZZNYBrp/view)
* [TSPLib](https://wwwproxy.iwr.uni-heidelberg.de/groups/comopt/software/TSPLIB95)

#####Multi-threads

If solving TSP instances faster, you can make use full of CPUs. By default, we handle them based on 32 threads:

```bash
bash solve-2.sh 32
```

##### Acknowledgements

* `solve-50.sh` is assigned to solve [Concorde](https://drive.google.com/file/d/1-5W-S5e7CKsJ9uY9uVXIyxgbcZZNYBrp/view) instances with 50 nodes;
* `solve-100.sh` is assigned to solve [Concorde](https://drive.google.com/file/d/1-5W-S5e7CKsJ9uY9uVXIyxgbcZZNYBrp/view) instances with 100 nodes;
* `solve-tsplib.sh` is assigned to solve [TSPLib](https://wwwproxy.iwr.uni-heidelberg.de/groups/comopt/software/TSPLIB95) instances.