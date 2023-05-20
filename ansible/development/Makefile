.PHONY: clean ping tailscale

clean:
	rm -f *.retry

ping:
	ansible all -m ping

headscale:
	ansible-playbook headscale.yml