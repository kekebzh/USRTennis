require 'net/http'
require 'open-uri'

class PagesController < ApplicationController

	def about
        @source = open("https://mon-espace-tennis.fft.fr").read
	end

	def partenaires
	end

	def bureau
	end

	def installations
	end

	def tarifs
	end

	def equipe_enseignante
	end

	def reglement
	end
	
end
