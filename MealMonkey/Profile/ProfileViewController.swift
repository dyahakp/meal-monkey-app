//
//  ProfileViewController.swift
//  MealMonkey
//
//  Created by Macbook Pro on 06/04/23.
//

import UIKit

class ProfileViewController: UIViewController {
    

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: InputTextField!
    
    @IBOutlet weak var emailTextField: InputTextField!
    
    @IBOutlet weak var addressTextField: InputTextField!
    
    var profileImage : UIImage? {
        
        didSet{
            profileImageView.image = profileImage
        }
    }
    
    func pickImage(){
        let actionAheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        actionAheet.addAction(UIAlertAction(title: "camera", style: .default, handler: {
            _ in
            self.showImagePicker(source: .camera)
            
        }))
        actionAheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: {
            _ in
            self.showImagePicker(source: .photoLibrary)
        }))
        actionAheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(actionAheet,animated: true)
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user  = UserDefaults.standard.user
      
        nameTextField.text = user?.name
        nameLabel.text = "Hi \(user?.name ?? "")"
        emailTextField.text = user?.email
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cameraButtonTapped(_ sender: Any) {
        pickImage()
        
    }
    func showImagePicker(source: UIImagePickerController.SourceType){
        let viewController = UIImagePickerController()
        viewController.sourceType = source
        viewController.delegate = self
        present(viewController,animated: true)
    }
    

    @IBAction func signOutButtonTapped(_ sender: Any) {
        UserDefaults.standard.deleteToken()
        UserDefaults.standard.deleteUser()
        goToAuth()
    }
    
    @IBAction func addressButtonTapped(_ sender: Any) {
        showAddressViewController{ _, address in
            self.addressTextField.text = address
            
    }
}

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as? UIImage
        profileImage = image
        dismiss(animated: true)
        
    }
}
extension ProfileViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        dismiss(animated: true)
    }
    
}
