# vman-cli-releases

Welcome to the VMAN CLI Releases repository. This repository contains the latest releases of the VMAN CLI. You can download the latest version of the VMAN CLI from the [Releases](https://github.com/vman-io/vman-cli-releases/releases) page.

You can also use the install.sh script to automatically install the latest version of the VMAN CLI. You can find the script in the root of the repository.

## Usage 


### Authentication

After installing the VMAN CLI, you can setup authentication for your VMAN organization with the following:

```bash
vman auth --organization <organization-id> --token <token>
```

Both your organization id and token will be provided by the VMAN admin.

### Connecting your cluster

After you've setup authentication for the VMAN CLI, you can setup your cluster to connect to vman with the following command. This will connect VMAN to your current kube context.

```bash
vman init --cluster-name <cluster-name>
```

To verify that VMAN has successfully been installed, look for the `vman` namespace in your cluster.

```bash
kubectl get namespaces | grep vman
```

### Creating your first ephemeral environment
Once you've got your cluster setup and connected, you can use the following command to setup your first ephemeral environment.

```bash
vman create --cluster-name <cluster-name> --environment-name <environment-name> -f /path/to/your/kustomization/dir/
```

This will use all the Kustomization files in the directory you specify to create a new ephemeral environment.

Within minutes, you should be able to see your new environment. 

### Clean up 

To remove an ephemeral environment you can use the following: 

```bash
vman delete --cluster-name <cluster-name> --environment-name <environment-name>
```

And to remove VMAN from your cluster, you can use:

```bash
vman remove --cluster-name <cluster-name>
```