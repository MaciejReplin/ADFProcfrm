﻿
CREATE   PROCEDURE procfwk.SetLogPipelineSuccess
	(
	@ExecutionId UNIQUEIDENTIFIER,
	@StageId INT,
	@PipelineId INT
	)
AS

BEGIN

	UPDATE
		[procfwk].[CurrentExecution]
	SET
		[PipelineStatus] = 'Success',
		[EndDateTime] = GETUTCDATE()
	WHERE
		[LocalExecutionId] = @ExecutionId
		AND [StageId] = @StageId
		AND [PipelineId] = @PipelineId

END
