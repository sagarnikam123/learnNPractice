import pytest
from laxleague.conftest import guardians, player_one


def test_construction(player_one):
    assert 'Tatiana' == player_one.first_name
    assert 'Jones' == player_one.last_name
    assert [] == player_one.guardians


def test_add_guardian(player_one, guardians):
    player_one.add_guardian(guardians[0])
    assert [guardians[0]] == player_one.guardians


# @pytest.mark.skip(reason='Have not yet implemented method')
def test_add_guardians(player_one, guardians):
    # Add one guardian
    player_one.add_guardian(guardians[0])
    # Later, add some more
    player_one.add_guardians((guardians[1], guardians[2]))
    assert list(guardians) == player_one.guardians


# @pytest.mark.skip()
def test_primary_guardian(player_one, guardians):
    # Add one guardian
    player_one.add_guardian(guardians[0])
    # Later, add some more
    player_one.add_guardians((guardians[1], guardians[2]))
    assert guardians[0] == player_one.primary_guardian


def test_no_primary_guardian(player_one):
    assert None is player_one.primary_guardian
    # with pytest.raises(IndexError) as exe:
    #    player_one.primary_guardian
    # assert 'list index out of range' == str(exe.value)
