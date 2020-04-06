class Pagination {
    dynamic previous;
    int next;

    Pagination({
        this.previous,
        this.next,
    });

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        previous: json["previous"],
        next: json["next"],
    );

    Map<String, dynamic> toJson() => {
        "previous": previous,
        "next": next,
    };
}
