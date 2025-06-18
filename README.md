# fintech-infra




🔐 2. Make the Script Executable

chmod +x /home/ubuntu/run.sh

🔄 3. Enable and Start the Service
Run the following commands to enable the service to start on boot and start it now:

sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl enable github-runner.service
sudo systemctl start github-runner.service


✅ 4. Verify the Service
Check if the runner is active:

sudo systemctl status github-runner.service
Expected output should show the status as active (running).

💡 Notes
Restart=always ensures the script restarts if it crashes.

RUNNER_MANUALLY_TRAP_SIG=1 helps the script handle shutdown signals gracefully.

📌 Troubleshooting
Use journalctl -u github-runner.service -f to see live logs.

Ensure no sudo commands inside the script block automatic execution as ubuntu user.

Confirm networking is available (runner needs internet access).

🧹 To Remove the Service
sudo systemctl stop github-runner.service
sudo systemctl disable github-runner.service
sudo rm /etc/systemd/system/github-runner.service
sudo systemctl daemon-reload


## 📦 Configuring Prometheus Stack
✅ Verify grafana password

kubectl --namespace monitoring get pods -l "release=prometheus-stack"

Get Grafana 'admin' user password by running:

kubectl --namespace monitoring get secrets prometheus-stack-grafana -o jsonpath="{.data.admin-password}" | base64 -d ; echo

Access Grafana local instance:

export POD_NAME=$(kubectl --namespace monitoring get pod -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=prometheus-stack" -oname)
kubectl --namespace monitoring port-forward $POD_NAME 3000 

#


















