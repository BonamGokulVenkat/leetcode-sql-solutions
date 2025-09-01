# 185. Department Top Three Salaries

## Problem Statement
We are given two tables:

### Employee
- `id` (int): Employee ID
- `name` (varchar): Employee name
- `salary` (int): Employee salary
- `departmentId` (int): Foreign key referencing Department.id

### Department
- `id` (int): Department ID
- `name` (varchar): Department name

A **high earner** in a department is defined as an employee whose salary is within the **top 3 unique salaries** of that department.

We need to return each high earner along with their department name and salary.

---

## Example

### Input
**Employee**
| id | name  | salary | departmentId |
|----|-------|--------|--------------|
| 1  | Joe   | 85000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
| 7  | Will  | 70000  | 1            |

**Department**
| id | name  |
|----|-------|
| 1  | IT    |
| 2  | Sales |

### Output
| Department | Employee | Salary |
|------------|----------|--------|
| IT         | Max      | 90000  |
| IT         | Joe      | 85000  |
| IT         | Randy    | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |

---

## Approach
1. Use a window function (`DENSE_RANK`) partitioned by department, ordered by salary descending.  
2. Select employees with rank ≤ 3.  
3. Join with `Department` to get department names.  

---


