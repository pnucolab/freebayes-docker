# Running Freebayes with Docker

This README provides instructions on how to run Freebayes, a genetic variant calling program, using Docker. Freebayes can be easily executed within a Docker container, ensuring a consistent and reproducible environment.

## Prerequisites

Before getting started, ensure that you have Docker installed on your system. You can download and install Docker from [Docker's official website](https://www.docker.com/products/docker-desktop).


## Running Freebayes

Replace `<version>` with the desired version of Freebayes. Version 1.3.7 is recommended

To run Freebayes using Docker, follow these steps:

1. **Create a directory** Move your fasta file to the ref directory and your Bam file to the bam directory.

2. **Run Freebayes** Run Freebayes using `docker compose up` and `docker compose run`.

3. **Create VCF file** Execute `freebayes -f ref/reference.fa bam/input.bam > var.vcf`.


## Notes

- Ensure that the paths to your input files (`reference.fasta` and `input.bam`) are correct and exist in the mounted directory.
- You can adjust the Docker run command to include additional Freebayes options as needed.

## Troubleshooting

If you encounter any issues, verify the following:
- Docker is correctly installed and running on your system.
- The specified paths are correct and accessible.
- Check the Freebayes documentation for any specific command-line arguments that may need adjustment.

## Additional Resources

- [Freebayes Documentation](https://github.com/ekg/freebayes)
- [Docker Documentation](https://docs.docker.com/)
- [Biocontainers on Docker Hub](https://quay.io/repository/biocontainers/freebayes)

By using Docker, you can simplify the deployment and execution of Freebayes, ensuring a consistent computational environment for your genomic analyses.

