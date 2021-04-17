load('student_name');
Path = '青年大学习';
File1 = dir(fullfile(Path,'*.jpg'));
File2 = dir(fullfile(Path,'*.png'));
not_found=[];
inform=[];
flag=1;
FileNames = {File1.name,File2.name};
for i=1:length(FileNames)
    n=FileNames{i};
    n=n(1:length(n)-4);
    for j=1:length(Student_name)
        if strcmp(n,Student_name(j))
            Student_name(j)=[];
            flag=0;
            break;
        end
    end
    if flag
        not_found=[not_found,n];
    end
    flag=1;
end
for i=1:length(Student_name)
    inform=strcat(inform,' @',Student_name(i));
end
inform=strcat(inform," ");
inform
not_found