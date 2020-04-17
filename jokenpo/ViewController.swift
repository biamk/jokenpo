//
//  ViewController.swift
//  jokenpo
//
//  Created by user166618 on 4/11/20.
//  Copyright © 2020 user166618. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagemMaquina: UIImageView!
    
    @IBOutlet weak var imagemJogador: UIImageView!
    
    @IBOutlet weak var resultado: UILabel!
    
let opcoes = ["PEDRA", "PAPEL", "TESOURA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemJogador.image = #imageLiteral(resourceName: "brown-paper-texture-background_1373-528")
        imagemMaquina.image = #imageLiteral(resourceName: "brown-paper-texture-background_1373-528")
       
        
   
    }


    @IBAction func opcaoEscolhida(_ sender: UIButton) {
    
        let maquina = opcoes.randomElement()!
        let jogador = sender.currentTitle!
        
        imagemJogador.image = UIImage(named: jogador+".png")
        
        imagemMaquina.image = UIImage(named: maquina+"png")
        
        verificaResultado(resJogador: jogador, resMaquina: maquina)
    }
    
    func verificaResultado(resJogador: String, resMaquina: String){
        
        if resJogador == resMaquina{
            resultado.textColor = UIColor.yellow
            resultado.text = "Empatou!"
        }else if resJogador == "pedra" && resMaquina == "tesoura" || resJogador == "papel" && resMaquina == "pedra" || resJogador == "tesoura" && resMaquina == "papel"{
            resultado.textColor = UIColor.green
            resultado.text = "Ganhou!"
        }else {
            resultado.textColor = UIColor.red
            resultado.text = "Perdeu!"
        }
        
    }
    
    
}

