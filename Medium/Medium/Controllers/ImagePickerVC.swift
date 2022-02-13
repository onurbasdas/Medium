//
//  ImagePickerVC.swift
//  Medium
//
//  Created by Onur Başdaş on 12.02.2022.
//

import UIKit

class ImagePickerVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var imagePicker: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        self.imagePicker.isUserInteractionEnabled = true
        self.imagePicker.addGestureRecognizer(tapGesture)
    }
    
    @objc func chooseImage() {
        let alert = UIAlertController(title: "Fotoğraf Seç", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Galeri", style: .default, handler: { _ in
            self.openGallery()
        }))
        alert.addAction(UIAlertAction.init(title: "Vazgeç", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        if let pickedimage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            self.imagePicker.image = pickedimage
        }
    }
    
    func openGallery() {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary){
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
            self.present(imagePicker, animated: true, completion: nil)
        } else {
            let alert  = UIAlertController(title: "Hata", message: "Galeriye erişim izniniz mevcut değil.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
