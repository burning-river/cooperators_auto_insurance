# syntax=docker/dockerfile:1

FROM quay.io/jupyter/base-notebook
RUN pip install --no-cache-dir pandas scikit-learn matplotlib seaborn pgeocode plotly
RUN pip install --no-cache-dir package_outlier xgboost imblearn openpyxl