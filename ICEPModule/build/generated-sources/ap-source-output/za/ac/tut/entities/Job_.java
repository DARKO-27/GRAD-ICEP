package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2023-07-16T06:54:39")
@StaticMetamodel(Job.class)
public class Job_ { 

    public static volatile SingularAttribute<Job, String> jobName;
    public static volatile SingularAttribute<Job, String> jobRequirements;
    public static volatile SingularAttribute<Job, String> jobQualificationName;
    public static volatile SingularAttribute<Job, String> jobFaculty;
    public static volatile SingularAttribute<Job, Date> creationDate;
    public static volatile SingularAttribute<Job, String> jobStipend;
    public static volatile SingularAttribute<Job, String> jobLink;
    public static volatile SingularAttribute<Job, String> CompanyName;
    public static volatile SingularAttribute<Job, String> jobLocation;
    public static volatile SingularAttribute<Job, String> jobQualificationType;
    public static volatile SingularAttribute<Job, String> jobEmail;
    public static volatile SingularAttribute<Job, String> jobNumberOfCandicates;
    public static volatile SingularAttribute<Job, String> jobDescription;
    public static volatile SingularAttribute<Job, Long> id;
    public static volatile SingularAttribute<Job, String> jobType;

}