# Grafana Dashboard Manager

# for exporting dashboards

# poetry install
python3 -m pip install --user pipx
pipx install poetry
pipx ensurepath # to add '/Users/sagar/.local/bin' in your PATH env_feature variable

# install from source
git clone https://github.com/Beam-Connectivity/grafana-dashboard-manager.git
cd grafana-dashboard-manager
poetry install

# install
pip install grafana-dashboard-manager

# init project using poetry
poetry init

# Download dashboards from web to solution-data using the Grafana admin user
poetry run grafana-dashboard-manager \
--host "http://localhost:3000/" \
--username "admin" --password "admin123" \
download all \
--destination-dir "/Users/sagar/Documents/secura/work/grafanaDashboards/test1"
###############################################################################

# install jq
brew install jq
###############################################################################
