# neo4j-ibhk-gene-regulation

Agentic semantic layer for iBKH data — Claude Desktop + Neo4j MCP for natural-language Cypher generation against the integrative Biomedical Knowledge Hub.

https://github.com/wcm-wanglab/iBKH

## Setup

1. Copy `claude_desktop_config.json` content into your Claude Desktop `claude_desktop_config.json` (typically `~/Library/Application Support/Claude/claude_desktop_config.json` on macOS)
2. Copy the system prompt from `claude-prompt.md` into a Claude Desktop Project's custom instructions
3. The `neo4j-mcp-ibhk` MCP server must be installed: `npm install -g neo4j-mcp`

## Files

| File | Purpose |
|---|---|
| `claude-prompt.md` | Full Claude Desktop system prompt (schema, examples, query guidelines) |
| `claude_desktop_config.json` | MCP server config for Neo4j connection |
| `example-queries.cyp` | Developer-validated Cypher examples |

## Knowledge Graph

~2.4M entities, ~48M relationships across 11 node types (Gene, Disease, Drug, Anatomy, Pathway, Molecule, Symptom, SideEffect, DSI, DSP, TC) and 86 relationship types.

## Citation

```
@article {Su2021.03.12.21253461,
  title = {Biomedical Discovery through the integrative Biomedical Knowledge Hub (iBKH)},
  author = {Chang Su, Yu Hou, Suraj Rajendran, Jacqueline R. M. A. Maasch, Zehra Abedi, Haotan Zhang, Zilong Bai, 
	    Anthony Cuturrufo, Winston Guo, Fayzan F. Chaudhry, Gregory Ghahramani, Jian Tang, Feixiong Cheng, 
	    Yue Li, Rui Zhang, Jiang Bian, Fei Wang},
  year = {2022},
  doi = {10.1101/2021.03.12.21253461},
  publisher = {Cold Spring Harbor Laboratory Press},
  URL = {https://www.medrxiv.org/content/10.1101/2021.03.12.21253461v4},
  journal = {medRxiv}
}
```