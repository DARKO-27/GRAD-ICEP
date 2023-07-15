/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;

/**
 *
 * @author kgaog
 */
@Entity
public class Job implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String jobName;
    private String jobLocation;
    private String jobType;
    private String jobRequirements;
    private String jobStipend;
    private String jobNumberOfCandicates;
    private String jobDescription;
    private String CompanyName;
    private String jobEmail;
    private String jobLink;
    private String jobFaculty;
    private String jobQualificationName;
    private String jobQualificationType;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date creationDate;

    public Job() {
    }

    public Job(String jobName, String jobLocation, String jobType, String jobRequirements, String jobStipend, String jobNumberOfCandicates, String jobDescription, String CompanyName, String jobEmail, String jobLink, String jobFaculty, String jobQualificationName, String jobQualificationType, Date creationDate) {
        this.jobName = jobName;
        this.jobLocation = jobLocation;
        this.jobType = jobType;
        this.jobRequirements = jobRequirements;
        this.jobStipend = jobStipend;
        this.jobNumberOfCandicates = jobNumberOfCandicates;
        this.jobDescription = jobDescription;
        this.CompanyName = CompanyName;
        this.jobEmail = jobEmail;
        this.jobLink = jobLink;
        this.jobFaculty = jobFaculty;
        this.jobQualificationName = jobQualificationName;
        this.jobQualificationType = jobQualificationType;
        this.creationDate = creationDate;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getJobLocation() {
        return jobLocation;
    }

    public void setJobLocation(String jobLocation) {
        this.jobLocation = jobLocation;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getJobRequirements() {
        return jobRequirements;
    }

    public void setJobRequirements(String jobRequirements) {
        this.jobRequirements = jobRequirements;
    }

    public String getJobStipend() {
        return jobStipend;
    }

    public void setJobStipend(String jobStipend) {
        this.jobStipend = jobStipend;
    }

    public String getJobNumberOfCandicates() {
        return jobNumberOfCandicates;
    }

    public void setJobNumberOfCandicates(String jobNumberOfCandicates) {
        this.jobNumberOfCandicates = jobNumberOfCandicates;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public String getCompanyName() {
        return CompanyName;
    }

    public void setCompanyName(String CompanyName) {
        this.CompanyName = CompanyName;
    }

    public String getJobEmail() {
        return jobEmail;
    }

    public void setJobEmail(String jobEmail) {
        this.jobEmail = jobEmail;
    }

    public String getJobLink() {
        return jobLink;
    }

    public void setJobLink(String jobLink) {
        this.jobLink = jobLink;
    }

    public String getJobFaculty() {
        return jobFaculty;
    }

    public void setJobFaculty(String jobFaculty) {
        this.jobFaculty = jobFaculty;
    }

    public String getJobQualificationName() {
        return jobQualificationName;
    }

    public void setJobQualificationName(String jobQualificationName) {
        this.jobQualificationName = jobQualificationName;
    }

    public String getJobQualificationType() {
        return jobQualificationType;
    }

    public void setJobQualificationType(String jobQualificationType) {
        this.jobQualificationType = jobQualificationType;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

   
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Job)) {
            return false;
        }
        Job other = (Job) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.entities.Job[ id=" + id + " ]";
    }
    
}
