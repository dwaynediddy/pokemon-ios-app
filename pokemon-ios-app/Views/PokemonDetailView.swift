//
//  PokemonDetailView.swift
//  pokemon-ios-app
//
//  Created by Dwayne on 27/2/2023.
//

import SwiftUI

struct PokemonDetailView: View {
    @EnvironmentObject var vm: ViewModel
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            PokemonView()
            VStack(spacing: 10) {
                Text("**ID**: \(vm.pokemonDetails?.id ?? 0)")
                Text("**height**: \(vm.formatHW(value: vm.pokemonDetails?.height ?? 0))M")
                Text("**weight**: \(vm.formatHW(value: vm.pokemonDetails?.weight ?? 0))KG")
            }
        }
        .onAppear{vm.getDetails(pokemon: pokemon)}
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}
