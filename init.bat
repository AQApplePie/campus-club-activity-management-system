@echo off
chcp 65001 >nul 2>&1  # 解决中文目录乱码问题
set "root_dir=campus-club-activity-management-system"  # 仓库根目录名称（与Git仓库名一致）

:: 1. 创建根目录
md "%root_dir%" >nul 2>&1
echo 正在创建项目文件夹结构...

:: 2. 创建一级目录+二级目录（按项目阶段分类）
md "%root_dir%\01-project-plan" >nul 2>&1
md "%root_dir%\02-requirements\01-原始资料" >nul 2>&1
md "%root_dir%\02-requirements\02-正式文档" >nul 2>&1
md "%root_dir%\02-requirements\03-评审资料" >nul 2>&1
md "%root_dir%\03-design\01-architecture" >nul 2>&1
md "%root_dir%\03-design\02-database" >nul 2>&1
md "%root_dir%\03-design\03-ui-ux" >nul 2>&1
md "%root_dir%\03-design\04-review" >nul 2>&1
md "%root_dir%\04-development\01-code\frontend" >nul 2>&1
md "%root_dir%\04-development\01-code\backend" >nul 2>&1
md "%root_dir%\04-development\02-environment" >nul 2>&1
md "%root_dir%\04-development\03-unit-test" >nul 2>&1
md "%root_dir%\04-development\04-version-record" >nul 2>&1
md "%root_dir%\05-test\01-test-case" >nul 2>&1
md "%root_dir%\05-test\02-test-report" >nul 2>&1
md "%root_dir%\05-test\03-bug" >nul 2>&1
md "%root_dir%\05-test\04-review" >nul 2>&1
md "%root_dir%\06-deployment\01-deploy-docs" >nul 2>&1
md "%root_dir%\06-deployment\02-training" >nul 2>&1
md "%root_dir%\06-deployment\03-confirmation" >nul 2>&1
md "%root_dir%\07-operation\01-trial-run" >nul 2>&1
md "%root_dir%\07-operation\02-feedback" >nul 2>&1
md "%root_dir%\07-operation\03-maintenance" >nul 2>&1
md "%root_dir%\07-operation\04-acceptance" >nul 2>&1
md "%root_dir%\08-quality-assurance" >nul 2>&1
md "%root_dir%\09-configuration-management" >nul 2>&1
md "%root_dir%\10-assets\01-tools" >nul 2>&1
md "%root_dir%\10-assets\02-licenses" >nul 2>&1
md "%root_dir%\10-assets\03-print-docs" >nul 2>&1

:: 3. 创建配置管理必备的辅助文件（放在配置管理专属目录）
echo 配置项台账（名称、版本、责任人、存储路径、变更记录）> "%root_dir%\09-configuration-management\配置项台账-V1.0.txt"
echo Git仓库使用规范：> "%root_dir%\09-configuration-management\Git仓库使用规范.txt"
echo 1. 文档命名格式：文档名称-版本号-状态.后缀（例：需求规格说明书-V1.0-确认版.docx）>> "%root_dir%\09-configuration-management\Git仓库使用规范.txt"
echo 2. 提交备注规范：阶段+操作+内容（例：需求阶段-新增-确认版需求规格说明书V1.0）>> "%root_dir%\09-configuration-management\Git仓库使用规范.txt"
echo 3. 权限分配：PM/PSM全权限，开发人员代码库读写权限，测试人员代码库只读权限>> "%root_dir%\09-configuration-management\Git仓库使用规范.txt"
echo 4. 版本号规则：初始版本V1.0，小修改升V1.1，大变更升V2.0>> "%root_dir%\09-configuration-management\Git仓库使用规范.txt"

echo 文件夹创建完成！
echo 根目录路径：%cd%\%root_dir%
echo 提示：请将此文件夹作为Git本地仓库根目录，后续通过Git关联远程仓库即可。
pause