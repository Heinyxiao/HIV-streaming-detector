# HIV Streaming Mutation Detector

A prototype pipeline for detecting HIV drug resistance mutations from Oxford Nanopore (ONT) sequencing data in real time.

## 🚀 Features
- Basecalling with ONT Dorado (or simulated reads in Colab).
- Read mapping to HIV reference genome (HXB2).
- Variant calling with Clair3.
- Annotation against known drug resistance mutations (Stanford HIVdb).
- Easy to extend to real-time dashboards (Streamlit).

## 🧪 Quick Start (Google Colab Demo)
1. Open the notebook: [`hiv_pipeline_demo.ipynb`](notebooks/hiv_pipeline_demo.ipynb).
2. Run all cells — the demo uses simulated HIV reads.
3. Example output:

## 📂 Repo Structure
- `scripts/`: Bash and Python scripts for pipeline.
- `notebooks/`: Colab/Jupyter tutorials.
- `results/`: Example outputs.
- `data/`: Reference genome and sample reads.

## 🔮 Next Steps
- Replace simulated reads with live ONT Dorado output.
- Add Streamlit dashboard for visualization.
- Expand annotation to full HIVdb mutation list.

## 📜 License
MIT
