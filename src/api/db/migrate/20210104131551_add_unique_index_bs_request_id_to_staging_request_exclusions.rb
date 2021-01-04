class AddUniqueIndexBsRequestIdToStagingRequestExclusions < ActiveRecord::Migration[6.0]
  def change
    add_index :staging_request_exclusions, [:bs_request_id, :staging_workflow_id],
              unique: true,
              name: 'unique_bs_request_exclusion_per_staging_workflow'
  end
end
