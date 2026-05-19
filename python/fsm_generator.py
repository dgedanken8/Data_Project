import graphviz
import os

# Find the directory where this Python script is located
current_dir = os.path.dirname(os.path.abspath(__file__))

# Build output path: ../images/packet_builder_fsm
output_path = os.path.join(current_dir, '..', 'images', 'packet_builder_fsm')

# Make sure the images directory exists
os.makedirs(os.path.dirname(output_path), exist_ok=True)

# Create FSM diagram
fsm = graphviz.Digraph('PacketBuilderFSM', format='png')
fsm.attr(rankdir='LR')  # Left-to-right layout

# Default node style
fsm.attr(
    'node',
    shape='circle',
    fontname='Helvetica',
    style='filled',
    fillcolor='lightblue'
)

# Reset entry point
# This is not a real FSM state, only a visual marker showing reset behavior
fsm.node('RESET', '', shape='point', width='0.2')

# FSM states
fsm.node('IDLE', 'IDLE')
fsm.node('SEND_HEADER', 'SEND_HEADER')
fsm.node('SEND_LENGTH', 'SEND_LENGTH')
fsm.node('SEND_DATA', 'SEND_DATA')
fsm.node('SEND_CHECKSUM', 'SEND_CHECKSUM')
fsm.node('DONE', 'DONE')

# Reset transition
# In the Verilog code, rst forces the state register to IDLE
fsm.edge(
    'RESET',
    'IDLE',
    label='rst == 1',
    color='red',
    fontcolor='red',
    style='dashed'
)

# State transitions according to the Verilog next_state logic

# IDLE
fsm.edge(
    'IDLE',
    'IDLE',
    label='rst == 0 && start == 0'
)

fsm.edge(
    'IDLE',
    'SEND_HEADER',
    label='rst == 0 && start == 1'
)

# SEND_HEADER
fsm.edge(
    'SEND_HEADER',
    'SEND_LENGTH',
    label='rst == 0\nnext clock'
)

# SEND_LENGTH
fsm.edge(
    'SEND_LENGTH',
    'SEND_DATA',
    label='rst == 0\nnext clock'
)

# SEND_DATA
fsm.edge(
    'SEND_DATA',
    'SEND_DATA',
    label='rst == 0 && data_valid == 0\nOR\nrst == 0 && data_valid == 1 &&\ndata_index != DATA_COUNT - 1'
)

fsm.edge(
    'SEND_DATA',
    'SEND_CHECKSUM',
    label='rst == 0 && data_valid == 1 &&\ndata_index == DATA_COUNT - 1'
)

# SEND_CHECKSUM
fsm.edge(
    'SEND_CHECKSUM',
    'DONE',
    label='rst == 0\nnext clock'
)

# DONE
fsm.edge(
    'DONE',
    'IDLE',
    label='rst == 0\nnext clock'
)

# Render diagram
try:
    fsm.render(filename=output_path, view=False, cleanup=True)
    print(f"Success! Diagram saved to: {output_path}.png")
except Exception as e:
    print("Error generating diagram:", e)
    print("Please make sure Graphviz software is installed and added to PATH.")