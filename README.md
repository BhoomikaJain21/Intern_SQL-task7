# Task 7: Creating Views

## 📌 Objective
To learn how to create and use SQL Views for:
- Abstracting complex queries
- Improving code reusability
- Enhancing data security

---

## 🛠 Tools Used
- MySQL Workbench
- SQL (standard syntax compatible with MySQLWorkbench)

---

## 🗂 What I Did

### ✅ Created Tables:
- `Employees`: Stores employee details including name, department, and salary
- `Departments`: Stores department information

### ✅ Inserted Sample Data:
- Added records to both tables for testing view behavior.

### ✅ Created Multiple Views:
1. **EmployeeDeptView**  
   Joins `Employees` and `Departments` to display name, department, and salary.

2. **HighSalaryView**  
   Filters employees earning more than 67,000.

3. **DeptEmployeeCount**  
   Shows number of employees in each department using `GROUP BY`.

4. **PublicEmployeeList**  
   A secure view that hides sensitive salary data.

5. **SalesDeptView** *(with `WITH CHECK OPTION`)*  
   Restricts rows to `department_id = 102` and ensures only matching records can be inserted.

### ✅ Queried Views:
- Fetched data from views to validate correctness.
- Demonstrated how views simplify complex joins and filtering.

---

## 📚 Key Learnings

- Views are **virtual tables** and don't store data themselves.
- They are useful for:
  - Hiding complexity (`JOIN`, `GROUP BY`)
  - Securing sensitive columns
  - Reusing logic across multiple queries
- `WITH CHECK OPTION` enforces logical integrity for insertable views.
- Views cannot always be updated or inserted into (depends on their complexity).

---
