import streamlit as st
import pyvista as pv
from stpyvista import stpyvista

## Initialize a plotter object
plotter = pv.Plotter(window_size=[300,600])

## Create a mesh with a cube 

for i in range(1, 11):
    cube = pv.Cube(center=(0, 0, i), x_length=2, y_length=2, z_length=0.8)
    plotter.add_mesh(cube, edge_color='black', color='purple', opacity=i/10, show_edges=True)

## Final touches
pv.start_xvfb()
plotter.background_color = '#dddddd'
plotter.view_isometric()
## Send to streamlit
"# 🗼 Opacity tower"
stpyvista(plotter, horizontal_align='left')