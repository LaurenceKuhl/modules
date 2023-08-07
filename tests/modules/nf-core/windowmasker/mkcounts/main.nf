#!/usr/bin/env nextflow

nextflow.enable.dsl = 2
include { WINDOWMASKER_MKCOUNTS } from '../../../../../modules/nf-core/windowmasker/mkcounts/main.nf'

workflow test_windowmasker_mkcounts {
    
    input = file(params.test_data['sarscov2']['genome']['genome_fasta'], checkIfExists: true)

    WINDOWMASKER_MKCOUNTS ( [ [id:'test'], input ] )

}