require './input_functions'

def read_patient_name(prompt)
	puts prompt
	patient_name = gets.chomp
	return patient_name
end

def calculate_accommodation_charges()
	charge = read_float("Enter the accommodation charges: ")
	return charge
end

def calculate_theatre_charges()
	charge = read_float("Enter the theatre charges: ")
	return charge
end

def calculate_pathology_charges()
	charge = read_float("Enter the pathology charges: ")
	return charge
end

def print_patient_bill(patient_name,total)
	print "the patient name: " + patient_name
	print("The amount due is: " + total.round(2).to_s.chomp('.0'))
end

def create_patient_bill()
	total = 0 # it is important to initial variables before use!
	patient_name = read_patient_name("Enter patient name: ")
	total += calculate_accommodation_charges()
	total += calculate_theatre_charges()
	total += calculate_pathology_charges()
	print_patient_bill(patient_name, total)
end

def main()
	create_patient_bill()
end

main()
