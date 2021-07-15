import UIKit

class GeneratorRandomNumberView: UIView {
    
    var number: Int = 0 {
        didSet {
        }
    }
    
    var randomNumberLabel: UILabel!
    var randomNumberButton: UIButton!
    var sendToRNButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        randomNumberLabel = UILabel()
        randomNumberLabel.font = .systemFont(ofSize: 40)
        randomNumberLabel.textAlignment = .right
        randomNumberLabel.text = "0"
        randomNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(randomNumberLabel)
        
        
        randomNumberButton = UIButton(type: .system)
        randomNumberButton.setTitle("Generate", for: .normal)
        randomNumberButton.addTarget(self, action: Selector(("getRandomNumberAction")), for: .touchUpInside)
        randomNumberButton.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(randomNumberButton)
        
        NSLayoutConstraint.activate([
            randomNumberLabel.topAnchor.constraint(equalTo: self.centerYAnchor),
            randomNumberLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            randomNumberButton.topAnchor.constraint(equalTo: randomNumberLabel.bottomAnchor,constant: 16),
            randomNumberButton.centerXAnchor.constraint(equalTo: randomNumberLabel.centerXAnchor)
        ])
    }
    
    @IBAction func getRandomNumberAction(_ sender: UIButton) {
        number = Int.random(in: 0...100)
    }
}
