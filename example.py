from diagrams import Diagram
from diagrams.onprem.vcs import Github
from diagrams.onprem.ci import GithubActions
from diagrams.onprem.container import Docker


with Diagram("Flow", show=False, direction="LR"):
    Github("Github") >> GithubActions("GithubActions") >> Docker("Docker")