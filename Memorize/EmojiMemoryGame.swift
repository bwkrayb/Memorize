//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Brandon Kraybill on 7/15/20.
//  Copyright © 2020 Brandon Kraybill. All rights reserved.
//  this is the ViewModel

import SwiftUI


class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}


// private(set) makes it possible so that the EmojiMemoryGame model can modify this, but everything else can still view it
//  after setting the Intents, you can remove the (set) so that its not open for everything
// the Mark: intents portion tells the viewmodel that these functions can access what is in the class we are creating in here
// cards var is a "video doorbell" where you can show the model cards to whoever is asking
// MARK comments create headers int he breadcrumbs for the swift file
// turned function into static function because you can't use the function before it is initialized
// the static function is a function on the type itself and not on the instance EmojiMemoryGame, 
