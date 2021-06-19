public class MenuCollectionView: UICollectionView {
    public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)

        setUp()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func setUp() {
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
}

public class MenuViewCollectionViewController: UICollectionViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()

        if let dataSource = collectionView.dataSource {
            for section in 0..<(dataSource.numberOfSections?(in: collectionView) ?? 1) {
                for item in 0..<dataSource.collectionView(collectionView, numberOfItemsInSection: section) {
                    dataSource.collectionView(collectionView, cellForItemAt: IndexPath(item: item, section: section))
                }
            }
        }
    }
}
