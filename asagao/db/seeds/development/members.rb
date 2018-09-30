names = %w(Taro Jiro Hana Jhon Mike Sophy Bill Alex Mary Tom)
fname = ["佐藤", "鈴木", "高橋", "田中"]
gname 0 ["太郎", "次郎", "花子"]
0.upto(9) do |idx|
    Member.create(
        number: idx + 10,
        name: names[idx],
        full_name: "#{fname[idx % 3]}#{gnames[idx % 3]}",
        email: "#{names[idx]}@example.com",
        birthday: "1981-12-01",
        sex: [1,1,2][idx % 3],
        administrator: (idx == 0) 
    )
end