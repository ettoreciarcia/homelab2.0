.PHONY: clean ping tailscale

clean:
	rm -f *.retry

ping:
	ansible all -m ping

tailscale:
	ansible-playbook -i tailscale.yml