<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传文档</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_studentHomeHead.jsp" />
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<!-- enctype="multipart/form-data" -->
				<!-- <h4>上传文档</h4> -->
				<ul class="list-inline">
					<li>文档管理</li>
					<li>/</li>
					<li>上传文档</li>
				</ul>
				
				<!-- 学生不用上传任务书 -->
				
				<%-- <form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/student/uploadTaskBook" method="post" enctype="multipart/form-data">
					<div class="col-md-3">
						<label class=" control-label">上传任务书:</label>
					</div>
					<div class="col-md-5">
						<input type="file" id="file" name="file">	
					</div>
					<div class="col-md-4">
						<button type="submit" class="btn btn-primary ">提交</button>		
					</div>
				</form>
				<br><br>
				<hr style="height:1px;border:none;border-top:1px solid #555555;" /> --%>
				<%--开题报告、中期汇报表、论文、系统代码、中英文翻译、附件--%>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/student/uploadOpening" method="post" enctype="multipart/form-data">
					<div class="col-md-3">
						<label class=" control-label">上传开题报告:</label>
					</div>
					<div class="col-md-5">
						<input type="file" id="file1" name="file">
					</div>
					<div class="col-md-4">
						<button type="submit" class="btn btn-primary ">提交</button>		
					</div>
				</form>
				<br><br>
				<hr style="height:1px;border:none;border-top:1px solid #555555;" />
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/student/uploadInterimReport" method="post" enctype="multipart/form-data">
					<div class="col-md-3">
						<label class=" control-label">中期汇报表:</label>
					</div>
					<div class="col-md-5">
						<input type="file" id="file2" name="file">
					</div>
					<div class="col-md-4">
						<button type="submit" class="btn btn-primary ">提交</button>
					</div>
				</form>
				<br><br>
				<hr style="height:1px;border:none;border-top:1px solid #555555;" />
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/student/uploadSystemCode" method="post" enctype="multipart/form-data">
					<div class="col-md-3">
						<label class=" control-label">系统代码:</label>
					</div>
					<div class="col-md-5">
						<input type="file" id="file4" name="file">
					</div>
					<div class="col-md-4">
						<button type="submit" class="btn btn-primary ">提交</button>
					</div>
				</form>
				<br><br>
				<hr style="height:1px;border:none;border-top:1px solid #555555;" />
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/student/uploadTranslation" method="post" enctype="multipart/form-data">
					<div class="col-md-3">
						<label class=" control-label">中英文翻译:</label>
					</div>
					<div class="col-md-5">
						<input type="file" id="file5" name="file">
					</div>
					<div class="col-md-4">
						<button type="submit" class="btn btn-primary ">提交</button>
					</div>
				</form>
				<br><br>
				<hr style="height:1px;border:none;border-top:1px solid #555555;" />
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/student/uploadEnclosure" method="post" enctype="multipart/form-data">
					<div class="col-md-3">
						<label class=" control-label">附件:</label>
					</div>
					<div class="col-md-5">
						<input type="file" id="file6" name="file">
					</div>
					<div class="col-md-4">
						<button type="submit" class="btn btn-primary ">提交</button>
					</div>
				</form>
				
				
				<br><br>
				<hr style="height:1px;border:none;border-top:1px solid #555555;" />
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/student/uploadThesisInformation" method="post" enctype="multipart/form-data">
					<div class="col-md-3">
						<label class=" control-label">上传论文:</label>
					</div>
					<div class="col-md-5">
						<input type="file" id="file7" name="file">
					</div>
					<div class="col-md-4">
						<button type="submit" class="btn btn-primary ">提交</button>		
					</div>
				</form>
				
			</div>
			<div class="col-md-2"></div>
		</div>

	</div>

</body>
</html>