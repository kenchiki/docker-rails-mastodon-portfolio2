ActivityCategory.create!(
  name: 'つくる（情報）',
  activities_attributes: [
    { name: 'プログラム' },
    { name: 'デザイン（平面）' },
    { name: '製品・サービス（情報）' },
    { name: 'その他（情報）' }
  ]
)

ActivityCategory.create!(
  name: 'つくる（物理）',
  activities_attributes: [
    { name: 'クラフト・工作' },
    { name: 'デザイン（立体）' },
    { name: '製品（物理）' },
    { name: 'その他（物理）' }
  ]
)

ActivityCategory.create!(
  name: 'つくる（音・映像・ゲーム・3D）',
  activities_attributes: [
    { name: '音楽' },
    { name: '映像・アニメーション' },
    { name: 'ゲーム' },
    { name: '3D' },
    { name: 'その他（音・映像・ゲーム・3D）' }
  ]
)

ActivityCategory.create!(
  name: 'つくる（衣食住）',
  activities_attributes: [
    { name: '服・布' },
    { name: '食べ物・料理' },
    { name: '家・建物・建築・建設' },
    { name: 'その他（衣食住）' }
  ]
)

ActivityCategory.create!(
  name: '描く',
  activities_attributes: [
    { name: '絵・イラスト' },
    { name: 'マンガ' },
    { name: 'その他（描く）' }
  ]
)


ActivityCategory.create!(
  name: '書く',
  activities_attributes: [
    { name: '創作（小説・シナリオ・詩）' },
    { name: 'エッセイ・レポート・ブログ' },
    { name: '広告・コピーライティング' },
    { name: '技術書・専門書' },
    { name: '翻訳' },
    { name: '書道・カリグラフィ' },
    { name: 'その他（書く）' }
  ]
)

ActivityCategory.create!(
  name: '表現する',
  activities_attributes: [
    { name: '写真' },
    { name: '演奏' },
    { name: 'パフォーマンス' },
    { name: 'その他（表現する）' }
  ]
)

ActivityCategory.create!(
  name: '考える・学ぶ',
  activities_attributes: [
    { name: '発案・計画' },
    { name: '学術・研究' },
    { name: '哲学' },
    { name: 'その他（考える）' }
  ]
)

ActivityCategory.create!(
  name: '自然と接する',
  activities_attributes: [
    { name: '農業・漁業・牧畜・林業' },
    { name: 'その他（自然と接する）' }
  ]
)


ActivityCategory.create!(
  name: '動植物と接する',
  activities_attributes: [
    { name: '動植物のケア・世話をする' },
    { name: 'その他（動植物と接する）' }
  ]
)

ActivityCategory.create!(
  name: '人と接する',
  activities_attributes: [
    { name: '販売する・PRする' },
    { name: '教える・指導する' },
    { name: '癒す・ケアする' },
    { name: 'アドバイスする' },
    { name: '話す・伝える・案内する' },
    { name: 'まとめる・調整する' },
    { name: '支援する・助ける' },
    { name: 'その他（人と接する）' }
  ]
)

ActivityCategory.create!(
  name: 'ものを扱う',
  activities_attributes: [
    { name: '操縦・操作する' },
    { name: '管理・維持・メンテする' },
    { name: '書類を扱う・手続きする' },
    { name: '運ぶ・保管する' },
    { name: 'その他の作業をする' },
    { name: 'その他（ものを扱う）' }
  ]
)

ActivityCategory.create!(
  name: 'その他',
  activities_attributes: [
    { name: 'その他のあらゆる技能' }
  ]
)

Prefecture.create!(name: '北海道')
Prefecture.create!(name: '青森県')
Prefecture.create!(name: '岩手県')
Prefecture.create!(name: '宮城県')
Prefecture.create!(name: '秋田県')
Prefecture.create!(name: '山形県')
Prefecture.create!(name: '福島県')
Prefecture.create!(name: '茨城県')
Prefecture.create!(name: '栃木県')
Prefecture.create!(name: '群馬県')
Prefecture.create!(name: '埼玉県')
Prefecture.create!(name: '千葉県')
Prefecture.create!(name: '東京都')
Prefecture.create!(name: '神奈川県')
Prefecture.create!(name: '新潟県')
Prefecture.create!(name: '富山県')
Prefecture.create!(name: '石川県')
Prefecture.create!(name: '福井県')
Prefecture.create!(name: '山梨県')
Prefecture.create!(name: '長野県')
Prefecture.create!(name: '岐阜県')
Prefecture.create!(name: '静岡県')
Prefecture.create!(name: '愛知県')
Prefecture.create!(name: '三重県')
Prefecture.create!(name: '滋賀県')
Prefecture.create!(name: '京都府')
Prefecture.create!(name: '大阪府')
Prefecture.create!(name: '兵庫県')
Prefecture.create!(name: '奈良県')
Prefecture.create!(name: '和歌山県')
Prefecture.create!(name: '鳥取県')
Prefecture.create!(name: '島根県')
Prefecture.create!(name: '岡山県')
Prefecture.create!(name: '広島県')
Prefecture.create!(name: '山口県')
Prefecture.create!(name: '徳島県')
Prefecture.create!(name: '香川県')
Prefecture.create!(name: '愛媛県')
Prefecture.create!(name: '高知県')
Prefecture.create!(name: '福岡県')
Prefecture.create!(name: '佐賀県')
Prefecture.create!(name: '長崎県')
Prefecture.create!(name: '熊本県')
Prefecture.create!(name: '大分県')
Prefecture.create!(name: '宮崎県')
Prefecture.create!(name: '鹿児島県')
Prefecture.create!(name: '沖縄県')
Prefecture.create!(name: 'アジア')
Prefecture.create!(name: 'ヨーロッパ')
Prefecture.create!(name: 'アフリカ')
Prefecture.create!(name: '北アメリカ')
Prefecture.create!(name: '南アメリカ')
Prefecture.create!(name: 'オセアニア')
