# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module DataPipeline
    module Types

      # Contains the parameters for ActivatePipeline.
      # @note When making an API call, pass ActivatePipelineInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         parameter_values: [
      #           {
      #             id: "fieldNameString", # required
      #             string_value: "fieldStringValue", # required
      #           },
      #         ],
      #         start_timestamp: Time.now,
      #       }
      class ActivatePipelineInput < Aws::Structure.new(
        :pipeline_id,
        :parameter_values,
        :start_timestamp)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

        # @!attribute [rw] parameter_values
        #   A list of parameter values to pass to the pipeline at activation.
        #   @return [Array<Types::ParameterValue>]

        # @!attribute [rw] start_timestamp
        #   The date and time to resume the pipeline. By default, the pipeline
        #   resumes from the last completed execution.
        #   @return [Time]

      end

      # Contains the output of ActivatePipeline.
      class ActivatePipelineOutput < Aws::EmptyStructure; end

      # Contains the parameters for AddTags.
      # @note When making an API call, pass AddTagsInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         tags: [ # required
      #           {
      #             key: "tagKey", # required
      #             value: "tagValue", # required
      #           },
      #         ],
      #       }
      class AddTagsInput < Aws::Structure.new(
        :pipeline_id,
        :tags)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

        # @!attribute [rw] tags
        #   The tags to add, as key/value pairs.
        #   @return [Array<Types::Tag>]

      end

      # Contains the output of AddTags.
      class AddTagsOutput < Aws::EmptyStructure; end

      # Contains the parameters for CreatePipeline.
      # @note When making an API call, pass CreatePipelineInput
      #   data as a hash:
      #
      #       {
      #         name: "id", # required
      #         unique_id: "id", # required
      #         description: "string",
      #         tags: [
      #           {
      #             key: "tagKey", # required
      #             value: "tagValue", # required
      #           },
      #         ],
      #       }
      class CreatePipelineInput < Aws::Structure.new(
        :name,
        :unique_id,
        :description,
        :tags)

        # @!attribute [rw] name
        #   The name for the pipeline. You can use the same name for multiple
        #   pipelines associated with your AWS account, because AWS Data
        #   Pipeline assigns each pipeline a unique pipeline identifier.
        #   @return [String]

        # @!attribute [rw] unique_id
        #   A unique identifier. This identifier is not the same as the pipeline
        #   identifier assigned by AWS Data Pipeline. You are responsible for
        #   defining the format and ensuring the uniqueness of this identifier.
        #   You use this parameter to ensure idempotency during repeated calls
        #   to `CreatePipeline`. For example, if the first call to
        #   `CreatePipeline` does not succeed, you can pass in the same unique
        #   identifier and pipeline name combination on a subsequent call to
        #   `CreatePipeline`. `CreatePipeline` ensures that if a pipeline
        #   already exists with the same name and unique identifier, a new
        #   pipeline is not created. Instead, you\'ll receive the pipeline
        #   identifier from the previous attempt. The uniqueness of the name and
        #   unique identifier combination is scoped to the AWS account or IAM
        #   user credentials.
        #   @return [String]

        # @!attribute [rw] description
        #   The description for the pipeline.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags to associate with the pipeline at creation. Tags let
        #   you control access to pipelines. For more information, see
        #   [Controlling User Access to Pipelines][1] in the *AWS Data Pipeline
        #   Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
        #   @return [Array<Types::Tag>]

      end

      # Contains the output of CreatePipeline.
      class CreatePipelineOutput < Aws::Structure.new(
        :pipeline_id)

        # @!attribute [rw] pipeline_id
        #   The ID that AWS Data Pipeline assigns the newly created pipeline.
        #   For example, `df-06372391ZG65EXAMPLE`.
        #   @return [String]

      end

      # Contains the parameters for DeactivatePipeline.
      # @note When making an API call, pass DeactivatePipelineInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         cancel_active: false,
      #       }
      class DeactivatePipelineInput < Aws::Structure.new(
        :pipeline_id,
        :cancel_active)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

        # @!attribute [rw] cancel_active
        #   Indicates whether to cancel any running objects. The default is
        #   true, which sets the state of any running objects to `CANCELED`. If
        #   this value is false, the pipeline is deactivated after all running
        #   objects finish.
        #   @return [Boolean]

      end

      # Contains the output of DeactivatePipeline.
      class DeactivatePipelineOutput < Aws::EmptyStructure; end

      # Contains the parameters for DeletePipeline.
      # @note When making an API call, pass DeletePipelineInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #       }
      class DeletePipelineInput < Aws::Structure.new(
        :pipeline_id)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

      end

      # Contains the parameters for DescribeObjects.
      # @note When making an API call, pass DescribeObjectsInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         object_ids: ["id"], # required
      #         evaluate_expressions: false,
      #         marker: "string",
      #       }
      class DescribeObjectsInput < Aws::Structure.new(
        :pipeline_id,
        :object_ids,
        :evaluate_expressions,
        :marker)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline that contains the object definitions.
        #   @return [String]

        # @!attribute [rw] object_ids
        #   The IDs of the pipeline objects that contain the definitions to be
        #   described. You can pass as many as 25 identifiers in a single call
        #   to `DescribeObjects`.
        #   @return [Array<String>]

        # @!attribute [rw] evaluate_expressions
        #   Indicates whether any expressions in the object should be evaluated
        #   when the object descriptions are returned.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   The starting point for the results to be returned. For the first
        #   call, this value should be empty. As long as there are more results,
        #   continue to call `DescribeObjects` with the marker value from the
        #   previous call to retrieve the next set of results.
        #   @return [String]

      end

      # Contains the output of DescribeObjects.
      class DescribeObjectsOutput < Aws::Structure.new(
        :pipeline_objects,
        :marker,
        :has_more_results)

        # @!attribute [rw] pipeline_objects
        #   An array of object definitions.
        #   @return [Array<Types::PipelineObject>]

        # @!attribute [rw] marker
        #   The starting point for the next page of results. To view the next
        #   page of results, call `DescribeObjects` again with this marker
        #   value. If the value is null, there are no more results.
        #   @return [String]

        # @!attribute [rw] has_more_results
        #   Indicates whether there are more results to return.
        #   @return [Boolean]

      end

      # Contains the parameters for DescribePipelines.
      # @note When making an API call, pass DescribePipelinesInput
      #   data as a hash:
      #
      #       {
      #         pipeline_ids: ["id"], # required
      #       }
      class DescribePipelinesInput < Aws::Structure.new(
        :pipeline_ids)

        # @!attribute [rw] pipeline_ids
        #   The IDs of the pipelines to describe. You can pass as many as 25
        #   identifiers in a single call. To obtain pipeline IDs, call
        #   ListPipelines.
        #   @return [Array<String>]

      end

      # Contains the output of DescribePipelines.
      class DescribePipelinesOutput < Aws::Structure.new(
        :pipeline_description_list)

        # @!attribute [rw] pipeline_description_list
        #   An array of descriptions for the specified pipelines.
        #   @return [Array<Types::PipelineDescription>]

      end

      # Contains the parameters for EvaluateExpression.
      # @note When making an API call, pass EvaluateExpressionInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         object_id: "id", # required
      #         expression: "longString", # required
      #       }
      class EvaluateExpressionInput < Aws::Structure.new(
        :pipeline_id,
        :object_id,
        :expression)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

        # @!attribute [rw] object_id
        #   The ID of the object.
        #   @return [String]

        # @!attribute [rw] expression
        #   The expression to evaluate.
        #   @return [String]

      end

      # Contains the output of EvaluateExpression.
      class EvaluateExpressionOutput < Aws::Structure.new(
        :evaluated_expression)

        # @!attribute [rw] evaluated_expression
        #   The evaluated expression.
        #   @return [String]

      end

      # A key-value pair that describes a property of a pipeline object. The
      # value is specified as either a string value (`StringValue`) or a
      # reference to another object (`RefValue`) but not as both.
      # @note When making an API call, pass Field
      #   data as a hash:
      #
      #       {
      #         key: "fieldNameString", # required
      #         string_value: "fieldStringValue",
      #         ref_value: "fieldNameString",
      #       }
      class Field < Aws::Structure.new(
        :key,
        :string_value,
        :ref_value)

        # @!attribute [rw] key
        #   The field identifier.
        #   @return [String]

        # @!attribute [rw] string_value
        #   The field value, expressed as a String.
        #   @return [String]

        # @!attribute [rw] ref_value
        #   The field value, expressed as the identifier of another object.
        #   @return [String]

      end

      # Contains the parameters for GetPipelineDefinition.
      # @note When making an API call, pass GetPipelineDefinitionInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         version: "string",
      #       }
      class GetPipelineDefinitionInput < Aws::Structure.new(
        :pipeline_id,
        :version)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

        # @!attribute [rw] version
        #   The version of the pipeline definition to retrieve. Set this
        #   parameter to `latest` (default) to use the last definition saved to
        #   the pipeline or `active` to use the last definition that was
        #   activated.
        #   @return [String]

      end

      # Contains the output of GetPipelineDefinition.
      class GetPipelineDefinitionOutput < Aws::Structure.new(
        :pipeline_objects,
        :parameter_objects,
        :parameter_values)

        # @!attribute [rw] pipeline_objects
        #   The objects defined in the pipeline.
        #   @return [Array<Types::PipelineObject>]

        # @!attribute [rw] parameter_objects
        #   The parameter objects used in the pipeline definition.
        #   @return [Array<Types::ParameterObject>]

        # @!attribute [rw] parameter_values
        #   The parameter values used in the pipeline definition.
        #   @return [Array<Types::ParameterValue>]

      end

      # Identity information for the EC2 instance that is hosting the task
      # runner. You can get this value by calling a metadata URI from the EC2
      # instance. For more information, see [Instance Metadata][1] in the
      # *Amazon Elastic Compute Cloud User Guide.* Passing in this value
      # proves that your task runner is running on an EC2 instance, and
      # ensures the proper AWS Data Pipeline service charges are applied to
      # your pipeline.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html
      # @note When making an API call, pass InstanceIdentity
      #   data as a hash:
      #
      #       {
      #         document: "string",
      #         signature: "string",
      #       }
      class InstanceIdentity < Aws::Structure.new(
        :document,
        :signature)

        # @!attribute [rw] document
        #   A description of an EC2 instance that is generated when the instance
        #   is launched and exposed to the instance via the instance metadata
        #   service in the form of a JSON representation of an object.
        #   @return [String]

        # @!attribute [rw] signature
        #   A signature which can be used to verify the accuracy and
        #   authenticity of the information provided in the instance identity
        #   document.
        #   @return [String]

      end

      # Contains the parameters for ListPipelines.
      # @note When making an API call, pass ListPipelinesInput
      #   data as a hash:
      #
      #       {
      #         marker: "string",
      #       }
      class ListPipelinesInput < Aws::Structure.new(
        :marker)

        # @!attribute [rw] marker
        #   The starting point for the results to be returned. For the first
        #   call, this value should be empty. As long as there are more results,
        #   continue to call `ListPipelines` with the marker value from the
        #   previous call to retrieve the next set of results.
        #   @return [String]

      end

      # Contains the output of ListPipelines.
      class ListPipelinesOutput < Aws::Structure.new(
        :pipeline_id_list,
        :marker,
        :has_more_results)

        # @!attribute [rw] pipeline_id_list
        #   The pipeline identifiers. If you require additional information
        #   about the pipelines, you can use these identifiers to call
        #   DescribePipelines and GetPipelineDefinition.
        #   @return [Array<Types::PipelineIdName>]

        # @!attribute [rw] marker
        #   The starting point for the next page of results. To view the next
        #   page of results, call `ListPipelinesOutput` again with this marker
        #   value. If the value is null, there are no more results.
        #   @return [String]

        # @!attribute [rw] has_more_results
        #   Indicates whether there are more results that can be obtained by a
        #   subsequent call.
        #   @return [Boolean]

      end

      # Contains a logical operation for comparing the value of a field with a
      # specified value.
      # @note When making an API call, pass Operator
      #   data as a hash:
      #
      #       {
      #         type: "EQ", # accepts EQ, REF_EQ, LE, GE, BETWEEN
      #         values: ["string"],
      #       }
      class Operator < Aws::Structure.new(
        :type,
        :values)

        # @!attribute [rw] type
        #   The logical operation to be performed: equal (`EQ`), equal reference
        #   (`REF_EQ`), less than or equal (`LE`), greater than or equal (`GE`),
        #   or between (`BETWEEN`). Equal reference (`REF_EQ`) can be used only
        #   with reference fields. The other comparison types can be used only
        #   with String fields. The comparison types you can use apply only to
        #   certain object fields, as detailed below.
        #
        #   The comparison operators EQ and REF\_EQ act on the following fields:
        #
        #   * name
        #   * @sphere
        #   * parent
        #   * @componentParent
        #   * @instanceParent
        #   * @status
        #   * @scheduledStartTime
        #   * @scheduledEndTime
        #   * @actualStartTime
        #   * @actualEndTime
        #
        #   The comparison operators `GE`, `LE`, and `BETWEEN` act on the
        #   following fields:
        #
        #   * @scheduledStartTime
        #   * @scheduledEndTime
        #   * @actualStartTime
        #   * @actualEndTime
        #
        #   Note that fields beginning with the at sign (@) are read-only and
        #   set by the web service. When you name fields, you should choose
        #   names containing only alpha-numeric values, as symbols may be
        #   reserved by AWS Data Pipeline. User-defined fields that you add to a
        #   pipeline should prefix their name with the string \"my\".
        #   @return [String]

        # @!attribute [rw] values
        #   The value that the actual field value will be compared with.
        #   @return [Array<String>]

      end

      # The attributes allowed or specified with a parameter object.
      # @note When making an API call, pass ParameterAttribute
      #   data as a hash:
      #
      #       {
      #         key: "attributeNameString", # required
      #         string_value: "attributeValueString", # required
      #       }
      class ParameterAttribute < Aws::Structure.new(
        :key,
        :string_value)

        # @!attribute [rw] key
        #   The field identifier.
        #   @return [String]

        # @!attribute [rw] string_value
        #   The field value, expressed as a String.
        #   @return [String]

      end

      # Contains information about a parameter object.
      # @note When making an API call, pass ParameterObject
      #   data as a hash:
      #
      #       {
      #         id: "fieldNameString", # required
      #         attributes: [ # required
      #           {
      #             key: "attributeNameString", # required
      #             string_value: "attributeValueString", # required
      #           },
      #         ],
      #       }
      class ParameterObject < Aws::Structure.new(
        :id,
        :attributes)

        # @!attribute [rw] id
        #   The ID of the parameter object.
        #   @return [String]

        # @!attribute [rw] attributes
        #   The attributes of the parameter object.
        #   @return [Array<Types::ParameterAttribute>]

      end

      # A value or list of parameter values.
      # @note When making an API call, pass ParameterValue
      #   data as a hash:
      #
      #       {
      #         id: "fieldNameString", # required
      #         string_value: "fieldStringValue", # required
      #       }
      class ParameterValue < Aws::Structure.new(
        :id,
        :string_value)

        # @!attribute [rw] id
        #   The ID of the parameter value.
        #   @return [String]

        # @!attribute [rw] string_value
        #   The field value, expressed as a String.
        #   @return [String]

      end

      # Contains pipeline metadata.
      class PipelineDescription < Aws::Structure.new(
        :pipeline_id,
        :name,
        :fields,
        :description,
        :tags)

        # @!attribute [rw] pipeline_id
        #   The pipeline identifier that was assigned by AWS Data Pipeline. This
        #   is a string of the form `df-297EG78HU43EEXAMPLE`.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the pipeline.
        #   @return [String]

        # @!attribute [rw] fields
        #   A list of read-only fields that contain metadata about the pipeline:
        #   @userId, @accountId, and @pipelineState.
        #   @return [Array<Types::Field>]

        # @!attribute [rw] description
        #   Description of the pipeline.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags to associated with a pipeline. Tags let you control
        #   access to pipelines. For more information, see [Controlling User
        #   Access to Pipelines][1] in the *AWS Data Pipeline Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
        #   @return [Array<Types::Tag>]

      end

      # Contains the name and identifier of a pipeline.
      class PipelineIdName < Aws::Structure.new(
        :id,
        :name)

        # @!attribute [rw] id
        #   The ID of the pipeline that was assigned by AWS Data Pipeline. This
        #   is a string of the form `df-297EG78HU43EEXAMPLE`.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the pipeline.
        #   @return [String]

      end

      # Contains information about a pipeline object. This can be a logical,
      # physical, or physical attempt pipeline object. The complete set of
      # components of a pipeline defines the pipeline.
      # @note When making an API call, pass PipelineObject
      #   data as a hash:
      #
      #       {
      #         id: "id", # required
      #         name: "id", # required
      #         fields: [ # required
      #           {
      #             key: "fieldNameString", # required
      #             string_value: "fieldStringValue",
      #             ref_value: "fieldNameString",
      #           },
      #         ],
      #       }
      class PipelineObject < Aws::Structure.new(
        :id,
        :name,
        :fields)

        # @!attribute [rw] id
        #   The ID of the object.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the object.
        #   @return [String]

        # @!attribute [rw] fields
        #   Key-value pairs that define the properties of the object.
        #   @return [Array<Types::Field>]

      end

      # Contains the parameters for PollForTask.
      # @note When making an API call, pass PollForTaskInput
      #   data as a hash:
      #
      #       {
      #         worker_group: "string", # required
      #         hostname: "id",
      #         instance_identity: {
      #           document: "string",
      #           signature: "string",
      #         },
      #       }
      class PollForTaskInput < Aws::Structure.new(
        :worker_group,
        :hostname,
        :instance_identity)

        # @!attribute [rw] worker_group
        #   The type of task the task runner is configured to accept and
        #   process. The worker group is set as a field on objects in the
        #   pipeline when they are created. You can only specify a single value
        #   for `workerGroup` in the call to `PollForTask`. There are no
        #   wildcard values permitted in `workerGroup`; the string must be an
        #   exact, case-sensitive, match.
        #   @return [String]

        # @!attribute [rw] hostname
        #   The public DNS name of the calling task runner.
        #   @return [String]

        # @!attribute [rw] instance_identity
        #   Identity information for the EC2 instance that is hosting the task
        #   runner. You can get this value from the instance using
        #   `http://169.254.169.254/latest/meta-data/instance-id`. For more
        #   information, see [Instance Metadata][1] in the *Amazon Elastic
        #   Compute Cloud User Guide.* Passing in this value proves that your
        #   task runner is running on an EC2 instance, and ensures the proper
        #   AWS Data Pipeline service charges are applied to your pipeline.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html
        #   @return [Types::InstanceIdentity]

      end

      # Contains the output of PollForTask.
      class PollForTaskOutput < Aws::Structure.new(
        :task_object)

        # @!attribute [rw] task_object
        #   The information needed to complete the task that is being assigned
        #   to the task runner. One of the fields returned in this object is
        #   `taskId`, which contains an identifier for the task being assigned.
        #   The calling task runner uses `taskId` in subsequent calls to
        #   ReportTaskProgress and SetTaskStatus.
        #   @return [Types::TaskObject]

      end

      # Contains the parameters for PutPipelineDefinition.
      # @note When making an API call, pass PutPipelineDefinitionInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         pipeline_objects: [ # required
      #           {
      #             id: "id", # required
      #             name: "id", # required
      #             fields: [ # required
      #               {
      #                 key: "fieldNameString", # required
      #                 string_value: "fieldStringValue",
      #                 ref_value: "fieldNameString",
      #               },
      #             ],
      #           },
      #         ],
      #         parameter_objects: [
      #           {
      #             id: "fieldNameString", # required
      #             attributes: [ # required
      #               {
      #                 key: "attributeNameString", # required
      #                 string_value: "attributeValueString", # required
      #               },
      #             ],
      #           },
      #         ],
      #         parameter_values: [
      #           {
      #             id: "fieldNameString", # required
      #             string_value: "fieldStringValue", # required
      #           },
      #         ],
      #       }
      class PutPipelineDefinitionInput < Aws::Structure.new(
        :pipeline_id,
        :pipeline_objects,
        :parameter_objects,
        :parameter_values)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

        # @!attribute [rw] pipeline_objects
        #   The objects that define the pipeline. These objects overwrite the
        #   existing pipeline definition.
        #   @return [Array<Types::PipelineObject>]

        # @!attribute [rw] parameter_objects
        #   The parameter objects used with the pipeline.
        #   @return [Array<Types::ParameterObject>]

        # @!attribute [rw] parameter_values
        #   The parameter values used with the pipeline.
        #   @return [Array<Types::ParameterValue>]

      end

      # Contains the output of PutPipelineDefinition.
      class PutPipelineDefinitionOutput < Aws::Structure.new(
        :validation_errors,
        :validation_warnings,
        :errored)

        # @!attribute [rw] validation_errors
        #   The validation errors that are associated with the objects defined
        #   in `pipelineObjects`.
        #   @return [Array<Types::ValidationError>]

        # @!attribute [rw] validation_warnings
        #   The validation warnings that are associated with the objects defined
        #   in `pipelineObjects`.
        #   @return [Array<Types::ValidationWarning>]

        # @!attribute [rw] errored
        #   Indicates whether there were validation errors, and the pipeline
        #   definition is stored but cannot be activated until you correct the
        #   pipeline and call `PutPipelineDefinition` to commit the corrected
        #   pipeline.
        #   @return [Boolean]

      end

      # Defines the query to run against an object.
      # @note When making an API call, pass Query
      #   data as a hash:
      #
      #       {
      #         selectors: [
      #           {
      #             field_name: "string",
      #             operator: {
      #               type: "EQ", # accepts EQ, REF_EQ, LE, GE, BETWEEN
      #               values: ["string"],
      #             },
      #           },
      #         ],
      #       }
      class Query < Aws::Structure.new(
        :selectors)

        # @!attribute [rw] selectors
        #   List of selectors that define the query. An object must satisfy all
        #   of the selectors to match the query.
        #   @return [Array<Types::Selector>]

      end

      # Contains the parameters for QueryObjects.
      # @note When making an API call, pass QueryObjectsInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         query: {
      #           selectors: [
      #             {
      #               field_name: "string",
      #               operator: {
      #                 type: "EQ", # accepts EQ, REF_EQ, LE, GE, BETWEEN
      #                 values: ["string"],
      #               },
      #             },
      #           ],
      #         },
      #         sphere: "string", # required
      #         marker: "string",
      #         limit: 1,
      #       }
      class QueryObjectsInput < Aws::Structure.new(
        :pipeline_id,
        :query,
        :sphere,
        :marker,
        :limit)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

        # @!attribute [rw] query
        #   The query that defines the objects to be returned. The `Query`
        #   object can contain a maximum of ten selectors. The conditions in the
        #   query are limited to top-level String fields in the object. These
        #   filters can be applied to components, instances, and attempts.
        #   @return [Types::Query]

        # @!attribute [rw] sphere
        #   Indicates whether the query applies to components or instances. The
        #   possible values are: `COMPONENT`, `INSTANCE`, and `ATTEMPT`.
        #   @return [String]

        # @!attribute [rw] marker
        #   The starting point for the results to be returned. For the first
        #   call, this value should be empty. As long as there are more results,
        #   continue to call `QueryObjects` with the marker value from the
        #   previous call to retrieve the next set of results.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of object names that `QueryObjects` will return
        #   in a single call. The default value is 100.
        #   @return [Integer]

      end

      # Contains the output of QueryObjects.
      class QueryObjectsOutput < Aws::Structure.new(
        :ids,
        :marker,
        :has_more_results)

        # @!attribute [rw] ids
        #   The identifiers that match the query selectors.
        #   @return [Array<String>]

        # @!attribute [rw] marker
        #   The starting point for the next page of results. To view the next
        #   page of results, call `QueryObjects` again with this marker value.
        #   If the value is null, there are no more results.
        #   @return [String]

        # @!attribute [rw] has_more_results
        #   Indicates whether there are more results that can be obtained by a
        #   subsequent call.
        #   @return [Boolean]

      end

      # Contains the parameters for RemoveTags.
      # @note When making an API call, pass RemoveTagsInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         tag_keys: ["string"], # required
      #       }
      class RemoveTagsInput < Aws::Structure.new(
        :pipeline_id,
        :tag_keys)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

        # @!attribute [rw] tag_keys
        #   The keys of the tags to remove.
        #   @return [Array<String>]

      end

      # Contains the output of RemoveTags.
      class RemoveTagsOutput < Aws::EmptyStructure; end

      # Contains the parameters for ReportTaskProgress.
      # @note When making an API call, pass ReportTaskProgressInput
      #   data as a hash:
      #
      #       {
      #         task_id: "taskId", # required
      #         fields: [
      #           {
      #             key: "fieldNameString", # required
      #             string_value: "fieldStringValue",
      #             ref_value: "fieldNameString",
      #           },
      #         ],
      #       }
      class ReportTaskProgressInput < Aws::Structure.new(
        :task_id,
        :fields)

        # @!attribute [rw] task_id
        #   The ID of the task assigned to the task runner. This value is
        #   provided in the response for PollForTask.
        #   @return [String]

        # @!attribute [rw] fields
        #   Key-value pairs that define the properties of the
        #   ReportTaskProgressInput object.
        #   @return [Array<Types::Field>]

      end

      # Contains the output of ReportTaskProgress.
      class ReportTaskProgressOutput < Aws::Structure.new(
        :canceled)

        # @!attribute [rw] canceled
        #   If true, the calling task runner should cancel processing of the
        #   task. The task runner does not need to call SetTaskStatus for
        #   canceled tasks.
        #   @return [Boolean]

      end

      # Contains the parameters for ReportTaskRunnerHeartbeat.
      # @note When making an API call, pass ReportTaskRunnerHeartbeatInput
      #   data as a hash:
      #
      #       {
      #         taskrunner_id: "id", # required
      #         worker_group: "string",
      #         hostname: "id",
      #       }
      class ReportTaskRunnerHeartbeatInput < Aws::Structure.new(
        :taskrunner_id,
        :worker_group,
        :hostname)

        # @!attribute [rw] taskrunner_id
        #   The ID of the task runner. This value should be unique across your
        #   AWS account. In the case of AWS Data Pipeline Task Runner launched
        #   on a resource managed by AWS Data Pipeline, the web service provides
        #   a unique identifier when it launches the application. If you have
        #   written a custom task runner, you should assign a unique identifier
        #   for the task runner.
        #   @return [String]

        # @!attribute [rw] worker_group
        #   The type of task the task runner is configured to accept and
        #   process. The worker group is set as a field on objects in the
        #   pipeline when they are created. You can only specify a single value
        #   for `workerGroup`. There are no wildcard values permitted in
        #   `workerGroup`; the string must be an exact, case-sensitive, match.
        #   @return [String]

        # @!attribute [rw] hostname
        #   The public DNS name of the task runner.
        #   @return [String]

      end

      # Contains the output of ReportTaskRunnerHeartbeat.
      class ReportTaskRunnerHeartbeatOutput < Aws::Structure.new(
        :terminate)

        # @!attribute [rw] terminate
        #   Indicates whether the calling task runner should terminate.
        #   @return [Boolean]

      end

      # A comparision that is used to determine whether a query should return
      # this object.
      # @note When making an API call, pass Selector
      #   data as a hash:
      #
      #       {
      #         field_name: "string",
      #         operator: {
      #           type: "EQ", # accepts EQ, REF_EQ, LE, GE, BETWEEN
      #           values: ["string"],
      #         },
      #       }
      class Selector < Aws::Structure.new(
        :field_name,
        :operator)

        # @!attribute [rw] field_name
        #   The name of the field that the operator will be applied to. The
        #   field name is the \"key\" portion of the field definition in the
        #   pipeline definition syntax that is used by the AWS Data Pipeline
        #   API. If the field is not set on the object, the condition fails.
        #   @return [String]

        # @!attribute [rw] operator
        #   Contains a logical operation for comparing the value of a field with
        #   a specified value.
        #   @return [Types::Operator]

      end

      # Contains the parameters for SetStatus.
      # @note When making an API call, pass SetStatusInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         object_ids: ["id"], # required
      #         status: "string", # required
      #       }
      class SetStatusInput < Aws::Structure.new(
        :pipeline_id,
        :object_ids,
        :status)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline that contains the objects.
        #   @return [String]

        # @!attribute [rw] object_ids
        #   The IDs of the objects. The corresponding objects can be either
        #   physical or components, but not a mix of both types.
        #   @return [Array<String>]

        # @!attribute [rw] status
        #   The status to be set on all the objects specified in `objectIds`.
        #   For components, use `PAUSE` or `RESUME`. For instances, use
        #   `TRY_CANCEL`, `RERUN`, or `MARK_FINISHED`.
        #   @return [String]

      end

      # Contains the parameters for SetTaskStatus.
      # @note When making an API call, pass SetTaskStatusInput
      #   data as a hash:
      #
      #       {
      #         task_id: "taskId", # required
      #         task_status: "FINISHED", # required, accepts FINISHED, FAILED, FALSE
      #         error_id: "string",
      #         error_message: "errorMessage",
      #         error_stack_trace: "string",
      #       }
      class SetTaskStatusInput < Aws::Structure.new(
        :task_id,
        :task_status,
        :error_id,
        :error_message,
        :error_stack_trace)

        # @!attribute [rw] task_id
        #   The ID of the task assigned to the task runner. This value is
        #   provided in the response for PollForTask.
        #   @return [String]

        # @!attribute [rw] task_status
        #   If `FINISHED`, the task successfully completed. If `FAILED`, the
        #   task ended unsuccessfully. Preconditions use false.
        #   @return [String]

        # @!attribute [rw] error_id
        #   If an error occurred during the task, this value specifies the error
        #   code. This value is set on the physical attempt object. It is used
        #   to display error information to the user. It should not start with
        #   string \"Service\_\" which is reserved by the system.
        #   @return [String]

        # @!attribute [rw] error_message
        #   If an error occurred during the task, this value specifies a text
        #   description of the error. This value is set on the physical attempt
        #   object. It is used to display error information to the user. The web
        #   service does not parse this value.
        #   @return [String]

        # @!attribute [rw] error_stack_trace
        #   If an error occurred during the task, this value specifies the stack
        #   trace associated with the error. This value is set on the physical
        #   attempt object. It is used to display error information to the user.
        #   The web service does not parse this value.
        #   @return [String]

      end

      # Contains the output of SetTaskStatus.
      class SetTaskStatusOutput < Aws::EmptyStructure; end

      # Tags are key/value pairs defined by a user and associated with a
      # pipeline to control access. AWS Data Pipeline allows you to associate
      # ten tags per pipeline. For more information, see [Controlling User
      # Access to Pipelines][1] in the *AWS Data Pipeline Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "tagKey", # required
      #         value: "tagValue", # required
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The key name of a tag defined by a user. For more information, see
        #   [Controlling User Access to Pipelines][1] in the *AWS Data Pipeline
        #   Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
        #   @return [String]

        # @!attribute [rw] value
        #   The optional value portion of a tag defined by a user. For more
        #   information, see [Controlling User Access to Pipelines][1] in the
        #   *AWS Data Pipeline Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
        #   @return [String]

      end

      # Contains information about a pipeline task that is assigned to a task
      # runner.
      class TaskObject < Aws::Structure.new(
        :task_id,
        :pipeline_id,
        :attempt_id,
        :objects)

        # @!attribute [rw] task_id
        #   An internal identifier for the task. This ID is passed to the
        #   SetTaskStatus and ReportTaskProgress actions.
        #   @return [String]

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline that provided the task.
        #   @return [String]

        # @!attribute [rw] attempt_id
        #   The ID of the pipeline task attempt object. AWS Data Pipeline uses
        #   this value to track how many times a task is attempted.
        #   @return [String]

        # @!attribute [rw] objects
        #   Connection information for the location where the task runner will
        #   publish the output of the task.
        #   @return [Hash<String,Types::PipelineObject>]

      end

      # Contains the parameters for ValidatePipelineDefinition.
      # @note When making an API call, pass ValidatePipelineDefinitionInput
      #   data as a hash:
      #
      #       {
      #         pipeline_id: "id", # required
      #         pipeline_objects: [ # required
      #           {
      #             id: "id", # required
      #             name: "id", # required
      #             fields: [ # required
      #               {
      #                 key: "fieldNameString", # required
      #                 string_value: "fieldStringValue",
      #                 ref_value: "fieldNameString",
      #               },
      #             ],
      #           },
      #         ],
      #         parameter_objects: [
      #           {
      #             id: "fieldNameString", # required
      #             attributes: [ # required
      #               {
      #                 key: "attributeNameString", # required
      #                 string_value: "attributeValueString", # required
      #               },
      #             ],
      #           },
      #         ],
      #         parameter_values: [
      #           {
      #             id: "fieldNameString", # required
      #             string_value: "fieldStringValue", # required
      #           },
      #         ],
      #       }
      class ValidatePipelineDefinitionInput < Aws::Structure.new(
        :pipeline_id,
        :pipeline_objects,
        :parameter_objects,
        :parameter_values)

        # @!attribute [rw] pipeline_id
        #   The ID of the pipeline.
        #   @return [String]

        # @!attribute [rw] pipeline_objects
        #   The objects that define the pipeline changes to validate against the
        #   pipeline.
        #   @return [Array<Types::PipelineObject>]

        # @!attribute [rw] parameter_objects
        #   The parameter objects used with the pipeline.
        #   @return [Array<Types::ParameterObject>]

        # @!attribute [rw] parameter_values
        #   The parameter values used with the pipeline.
        #   @return [Array<Types::ParameterValue>]

      end

      # Contains the output of ValidatePipelineDefinition.
      class ValidatePipelineDefinitionOutput < Aws::Structure.new(
        :validation_errors,
        :validation_warnings,
        :errored)

        # @!attribute [rw] validation_errors
        #   Any validation errors that were found.
        #   @return [Array<Types::ValidationError>]

        # @!attribute [rw] validation_warnings
        #   Any validation warnings that were found.
        #   @return [Array<Types::ValidationWarning>]

        # @!attribute [rw] errored
        #   Indicates whether there were validation errors.
        #   @return [Boolean]

      end

      # Defines a validation error. Validation errors prevent pipeline
      # activation. The set of validation errors that can be returned are
      # defined by AWS Data Pipeline.
      class ValidationError < Aws::Structure.new(
        :id,
        :errors)

        # @!attribute [rw] id
        #   The identifier of the object that contains the validation error.
        #   @return [String]

        # @!attribute [rw] errors
        #   A description of the validation error.
        #   @return [Array<String>]

      end

      # Defines a validation warning. Validation warnings do not prevent
      # pipeline activation. The set of validation warnings that can be
      # returned are defined by AWS Data Pipeline.
      class ValidationWarning < Aws::Structure.new(
        :id,
        :warnings)

        # @!attribute [rw] id
        #   The identifier of the object that contains the validation warning.
        #   @return [String]

        # @!attribute [rw] warnings
        #   A description of the validation warning.
        #   @return [Array<String>]

      end

    end
  end
end