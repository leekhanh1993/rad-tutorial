class Datum < ApplicationRecord

    validates:address, presence:true

    validates:age, presence:true, numericality: {greater_than: 18}
    VALID_PHONE_REGEX = /\A^[0][1-9]\d{9}$|^[1-9]\d{9}$\z/i
    validates:mobilenumber, presence:true, format:{with:VALID_PHONE_REGEX}


end
