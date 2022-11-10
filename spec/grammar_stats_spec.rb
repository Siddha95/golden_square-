require 'grammar_stats'

RSpec.describe GrammarStats do


    describe '#check' do
        it "returns true if string starts with a
        capital and ends with suitable punctuation" do
            grammar_stats = GrammarStats.new()
            results = grammar_stats.check("Hello!")
            expect(results).to eq true
        end

        it "returns false if string starts with a
        capital but does not end with punctuation" do
            grammar_stats = GrammarStats.new()
            results = grammar_stats.check("Hello")
            expect(results).to eq false
        end

        it "returns false if string does not start with a
        capital and does not end with punctuation" do
            grammar_stats = GrammarStats.new()
            results = grammar_stats.check("hello")
            expect(results).to eq false
        end

        it "returns false if string does not start with a
        capital but ends with punctuation" do
            grammar_stats = GrammarStats.new()
            results = grammar_stats.check("hello.")
            expect(results).to eq false
        end
    end

    describe '#percentage_good' do
        it "Returns 100 if one check has been completeted and it passess" do
            grammar_stats = GrammarStats.new()
            grammar_stats.check("Hello.")
            result = grammar_stats.percentage_good()
            expect(result).to eq 100
        end

        it "Returns 50 if two check has been completeted and it passess only one" do
            grammar_stats = GrammarStats.new()
            grammar_stats.check("Hello.")
            grammar_stats.check("Hello")
            result = grammar_stats.percentage_good()
            expect(result).to eq 50
        end

        it "Returns 20  if 1 test passes and 5 fail " do
            grammar_stats = GrammarStats.new()
            grammar_stats.check("Hello.")
            grammar_stats.check("Hello")
            grammar_stats.check("Hello")
            grammar_stats.check("Hello")
            grammar_stats.check("Hello")
            result = grammar_stats.percentage_good()
            expect(result).to eq 20
        end

        it "Returns 100 it passes 3 in a row " do
            grammar_stats = GrammarStats.new()
            grammar_stats.check("Hello.")
            grammar_stats.check("Hello.")
            grammar_stats.check("Hello.")
            result = grammar_stats.percentage_good()
            expect(result).to eq 100
        end
    end




end
